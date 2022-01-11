import 'package:flutter/material.dart';
import 'package:sar/main.dart';
import 'package:sar/theme.dart';
import 'package:sar/widgets/text_page.dart';
import 'package:sar/pages/navigate_to.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App Info")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Spacer(),
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset("assets/icon/icon.png", width: 120),
            ),
            const SizedBox(height: 24),
            const Text("SaR Schulbroschüren App"),
            Text("Version $version"),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () => navigateTo(const Impressum(), context),
              style: TextButton.styleFrom(primary: sarBlue),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text("Impressum"),
                  SizedBox(width: 4),
                  Icon(Icons.launch),
                ],
              ),
            ),
            const Spacer(),
            const Text("made by Konrad Strenge"),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class Impressum extends StatelessWidget {
  const Impressum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextPage(textFile: "impressum.txt", appBarTitle: "Impressum");
  }
}
