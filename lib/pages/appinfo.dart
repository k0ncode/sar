import 'package:flutter/material.dart';
import 'package:sar/main.dart';
import 'package:sar/design/theme.dart';
import 'navigate_to_function.dart';
import 'package:sar/design/widgets/text_page.dart';

class AppInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Info")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            ClipRRect(
              child: Image.asset("assets/images/icon.png", width: 120),
              borderRadius: BorderRadius.circular(24),
            ),
            SizedBox(height: 24),
            Text("SaR Virtuelle Schulbroschüre"),
            Text("Version " + version),
            SizedBox(height: 16),
            TextButton(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Impressum"),
                  SizedBox(width: 4),
                  Icon(Icons.launch),
                ],
              ),
              onPressed: () => navigateTo(Impressum(), context),
              style: TextButton.styleFrom(primary: sarBlue),
            ),
            Spacer(),
            Text("made by Konrad Strenge"),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class Impressum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextPage(textFile: "impressum.txt", appBarTitle: "Impressum");
  }
}
