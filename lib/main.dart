import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_info/package_info.dart';
import 'package:sar/theme.dart';
import 'package:sar/pages/startseite.dart';

String version = "";

void main() async {
  // Optische Anpassungen:
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Statusbar transparent machen
      systemNavigationBarColor: Colors.grey[50], // NavigationBar weiß machen
      systemNavigationBarIconBrightness: Brightness.dark, // NavigationBar Icons schwarz machen
    ),
  );

  // Nur im Hochformat erlauben:
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // Version erhalten:
  final PackageInfo packageInfo = await PackageInfo.fromPlatform();
  version = packageInfo.version.substring(0, 3);

  // App starten:
  runApp(
    MaterialApp(
      theme: theme,
      home: const Startseite(),
    ),
  );
}
