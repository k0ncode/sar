import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class QRCodeScanner extends StatefulWidget {
  const QRCodeScanner({super.key});

  @override
  State<QRCodeScanner> createState() => QRCodeScannerState();
}

class QRCodeScannerState extends State<QRCodeScanner> with WidgetsBindingObserver {
  MobileScannerController controller = MobileScannerController(
    formats: [BarcodeFormat.qrCode],
    detectionSpeed: DetectionSpeed.noDuplicates,
    detectionTimeoutMs: 750,
  );

  StreamSubscription<Object?>? subscription;

  void handleQRCode(BarcodeCapture capture) async {
    final String qrCodeValue = capture.barcodes.first.displayValue!;
    final Uri url = Uri.parse(qrCodeValue);
    if (!await launchUrl(url)) {
      debugPrint("Could not launch URL");
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    subscription = controller.barcodes.listen(handleQRCode);
    unawaited(controller.start());
  }

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
        subscription = controller.barcodes.listen(handleQRCode);
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
        actions: [
          IconButton(
            color: Colors.white,
            icon: ValueListenableBuilder(
              valueListenable: controller,
              builder: (context, state, child) {
                switch (state.torchState) {
                  case TorchState.off:
                    return const Icon(Icons.flash_on);
                  case TorchState.on:
                    return const Icon(Icons.flash_off);
                  case TorchState.auto:
                    return const Icon(Icons.flash_auto);
                  default:
                    return const SizedBox.shrink();
                }
              },
            ),
            onPressed: () => controller.toggleTorch(),
          )
        ],
      ),
      body: Stack(children: [
        MobileScanner(
          controller: controller,
        ),
        Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 5)),
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
