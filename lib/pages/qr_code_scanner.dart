import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
// import 'package:url_launcher/url_launcher.dart';

class QRCodeScanner extends StatefulWidget {
  const QRCodeScanner({super.key});

  @override
  State<QRCodeScanner> createState() => _QRCodeScannerState();
}

class _QRCodeScannerState extends State<QRCodeScanner> with WidgetsBindingObserver {
  final MobileScannerController controller = MobileScannerController();
  Barcode? barcode;
  StreamSubscription<Object?>? subscription;

  Widget buildBarcode(Barcode? value) {
    if (value == null) {
      return const Text(
        "Bitte scannen",
        overflow: TextOverflow.fade,
        style: TextStyle(color: Colors.white),
      );
    } else {
      return Text(
        value.displayValue ?? "nicht anzeigbar",
        overflow: TextOverflow.fade,
        style: const TextStyle(color: Colors.white),
      );
    }
  }

  void handleBarcode(BarcodeCapture barcodes) {
    if (mounted) {
      setState(() {
        barcode = barcodes.barcodes.firstOrNull;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    subscription = controller.barcodes.listen(handleBarcode);

    unawaited(controller.start());
  }

  // boilerplate:
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!controller.value.isInitialized) {
      return;
    }

    switch (state) {
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
        return;
      case AppLifecycleState.resumed:
        subscription = controller.barcodes.listen(handleBarcode);

        unawaited(controller.start());
      case AppLifecycleState.inactive:
        unawaited(subscription?.cancel());
        subscription = null;
        unawaited(controller.stop());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QR-Code Scanner"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        actions: [
          IconButton(
            color: Colors.white,
            iconSize: 32.0,
            onPressed: () async => await controller.toggleTorch(),
            icon: ValueListenableBuilder(
              valueListenable: controller,
              builder: (context, state, child) {
                if (state.isInitialized && state.isRunning) {
                  switch (state.torchState) {
                    case TorchState.auto:
                      const Icon(Icons.flash_auto);
                    case TorchState.off:
                      const Icon(Icons.flash_off);
                    case TorchState.on:
                      const Icon(Icons.flash_on);
                    default:
                      return const Icon(
                        Icons.no_flash,
                        color: Colors.grey,
                      );
                  }
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
      body: Stack(children: [
        MobileScanner(
          controller: controller,
          fit: BoxFit.contain,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            alignment: Alignment.bottomCenter,
            height: 100,
            color: Colors.black.withOpacity(0.4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: Center(child: buildBarcode(barcode))),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  @override
  Future<void> dispose() async {
    WidgetsBinding.instance.removeObserver(this);
    unawaited(subscription?.cancel());
    subscription = null;
    super.dispose();
    await controller.dispose();
  }
}
