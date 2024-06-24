import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'theme.dart';
import 'pages/home.dart';

String version = "";

void main() async {
  // Nur im Hochformat erlauben:
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // Navigationsleiste transparent machen:
  makeSystemNavigationTransparent();

  // App Version erhalten für App Info Seite:
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  version = packageInfo.version.substring(0, 3);

  // App starten:
  runApp(
    MaterialApp(
      theme: theme,
      darkTheme: darkTheme,
      home: const Startseite(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
