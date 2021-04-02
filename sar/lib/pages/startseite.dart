import 'package:flutter/material.dart';
import 'package:sar/design/theme.dart';
import 'package:sar/routes.dart';

class Startseite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SaR Schulbroschüre"),
        actions: [
          IconButton(
            icon: Icon(Icons.info_outlined),
            onPressed: () => navigateTo(AppInfo(), context),
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
                "assets/image00.png",
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
                  child: Text("WILLKOMMEN"),
                  onPressed: () => navigateTo(Willkommen(), context),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  style: roundedButtonStyle,
                  child: Text("INFORMATIONEN"),
                  onPressed: () => navigateTo(Informationen(), context),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  style: roundedButtonStyle,
                  child: Text("NEWS"),
                  onPressed: () => navigateTo(News(), context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
