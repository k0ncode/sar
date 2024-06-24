import 'package:flutter/material.dart';
import 'package:sar/pages/app_info.dart';
import 'package:sar/pages/qr_code_scanner.dart';
import 'package:sar/theme.dart';
import 'package:sar/pages/navigate_to.dart';
import 'package:sar/pages/willkommen.dart';
import 'package:sar/pages/informationen.dart';
import 'package:sar/pages/news.dart';

class Startseite extends StatelessWidget {
  const Startseite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SaR Schulbroschüre"),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outlined),
            onPressed: () => navigateTo(const AppInfo(), context),
            tooltip: "App Info",
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset(
                  "assets/images/image00.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  FilledButton(
                    style: roundedButtonStyle,
                    onPressed: () => navigateTo(const Willkommen(), context),
                    child: const Text("WILLKOMMEN"),
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    style: roundedButtonStyle,
                    onPressed: () => navigateTo(const Informationen(), context),
                    child: const Text("INFORMATIONEN"),
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    style: roundedButtonStyle,
                    onPressed: () => navigateTo(const News(), context),
                    child: const Text("NEWS"),
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    style: roundedButtonStyle,
                    onPressed: () => navigateTo(const QRCodeScanner(), context),
                    child: const Text("QR-CODE SCANNER"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
