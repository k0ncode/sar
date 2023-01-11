import 'package:flutter/material.dart';
import 'package:sar/main.dart';
import 'package:sar/pages/impressum.dart';
import 'package:sar/pages/navigate_to.dart';
import 'package:sar/pages/impressum.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("App Info"),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Expanded(flex: 1, child: SizedBox()),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: Image.asset("assets/icon/icon.png", width: 148),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Digitale Schulbroschüre \n der Schule am Ried",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Text("Version $version"),
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () => navigateTo(const Impressum(), context),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [Text("Impressum"), SizedBox(width: 4), Icon(Icons.launch)],
                    ),
                  ),
                  TextButton(
                    onPressed: () => showLicensePage(context: context),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [Text("Open-Source Lizenzen"), SizedBox(width: 4), Icon(Icons.launch)],
                    ),
                  ),
                  const Expanded(flex: 1, child: SizedBox()),
                  const Text("made by Konrad Strenge"),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ));
  }
}
