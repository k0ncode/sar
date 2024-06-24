import 'package:flutter/material.dart';
import 'package:sar/main.dart';
import 'package:sar/pages/impressum.dart';
import 'package:sar/pages/navigate_to.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("App Info"),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
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
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Text("Version $version"),
                  const SizedBox(height: 8),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Theme.of(context).colorScheme.secondary),
                    onPressed: () => navigateTo(const Impressum(), context),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [Text("Impressum"), SizedBox(width: 4), Icon(Icons.launch)],
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Theme.of(context).colorScheme.secondary),
                    onPressed: () => showLicensePage(context: context),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [Text("Open-Source Lizenzen"), SizedBox(width: 4), Icon(Icons.launch)],
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
