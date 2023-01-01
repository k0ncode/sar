import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

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
      appBar: AppBar(title: const Text("QR-Code Scanner")),
      body: MobileScanner(
        allowDuplicates: false,
        controller: cameraController,
        onDetect: (barcode, args) {
          if (barcode.rawValue == null) {
            debugPrint("Failed to scan QR-Code");
          } else {
            final String code = barcode.rawValue!;
            debugPrint("QR-Code found");
          }
        },
      ),
    );
  }
}
