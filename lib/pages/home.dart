import 'package:flutter/material.dart';
import 'package:sar/pages/app_info.dart';
import 'package:sar/theme.dart';
import 'package:sar/pages/navigate_to.dart';
import 'package:sar/pages/willkommen.dart';
import 'package:sar/pages/informationen.dart';
import 'package:sar/pages/news.dart';

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
            // onPressed: () => showAboutDialog(
            //   context: context,
            //   applicationIcon: ClipRRect(
            //     borderRadius: BorderRadius.circular(12),
            //     child: Image.asset("assets/icon/icon.png", width: 80),
            //   ),
            //   applicationName: "Digitale Schulbroschüre der Schule am Ried",
            //   applicationVersion: "Version $version",
            //   children: [
            //     const Center(child: Text("made by Konrad Strenge")),
            //     TextButton(
            //       onPressed: () => navigateTo(
            //           const TextPage(
            //               textFile: "impressum.txt", appBarTitle: "Impressum"),
            //           context),
            //       child: Row(
            //         mainAxisSize: MainAxisSize.min,
            //         children: const [
            //           Text("Impressum"),
            //           SizedBox(width: 4),
            //           Icon(Icons.launch)
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            tooltip: "App-Info",
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
      ),
    );
  }
}
