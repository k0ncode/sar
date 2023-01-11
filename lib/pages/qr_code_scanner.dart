import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class QRCodeScanner extends StatefulWidget {
  const QRCodeScanner({Key? key}) : super(key: key);

  @override
  State<QRCodeScanner> createState() => _QRCodeScannerState();
}

class _QRCodeScannerState extends State<QRCodeScanner> {
  MobileScannerController cameraController = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QR-Code Scanner"),
        actions: [
          IconButton(
            color: Colors.white,
            icon: ValueListenableBuilder(
              valueListenable: cameraController.torchState,
              builder: (context, state, child) {
                switch (state as TorchState) {
                  case TorchState.off:
                    return const Icon(Icons.flash_on);
                  case TorchState.on:
                    return const Icon(Icons.flash_off);
                }
              },
            ),
            onPressed: () => cameraController.toggleTorch(),
          )
        ],
      ),
      body: Stack(children: [
        MobileScanner(
          allowDuplicates: false,
          controller: cameraController,
          onDetect: (qrcode, args) async {
            if (qrcode.rawValue == null) {
              debugPrint("Failed to scan QR-Code");
            } else {
              final String qrCodeValue = qrcode.rawValue!;
              final Uri url = Uri.parse(qrCodeValue);
              if (await canLaunchUrl(url)) {
                await launchUrl(url, mode: LaunchMode.externalApplication);
              } else {
                debugPrint("$url kann nicht geöffnet werden");
              }
              debugPrint("QR-Code found: $qrCodeValue");
            }
          },
        ),
        Center(
          child: Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 5)),
          ),
        ),
      ]),
    );
  }
}
