import 'package:flutter/material.dart';
import 'package:sar/theme.dart';
import 'package:sar/pages/navigate_to.dart';
import 'package:sar/pages/willkommen.dart';
import 'package:sar/pages/informationen.dart';
import 'package:sar/pages/news.dart';
import 'package:sar/pages/appinfo.dart';

class Startseite extends StatelessWidget {
  const Startseite({Key? key}) : super(key: key);

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
      body: Column(
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
                ElevatedButton(
                  style: roundedButtonStyle,
                  onPressed: () => navigateTo(const Willkommen(), context),
                  child: const Text("WILLKOMMEN"),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: roundedButtonStyle,
                  onPressed: () => navigateTo(const Informationen(), context),
                  child: const Text("INFORMATIONEN"),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: roundedButtonStyle,
                  onPressed: () => navigateTo(const News(), context),
                  child: const Text("NEWS"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
