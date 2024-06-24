import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

const Color sarBlue = Color(0xff253185); // Farbe vom SaR Logo

ThemeData theme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: sarBlue,
    onPrimary: Colors.white,
    secondary: sarBlue,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    surface: Colors.white,
    onSurface: Colors.black,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 18,
      height: 1.5,
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color.fromARGB(255, 40, 40, 40),
    onPrimary: Colors.white,
    secondary: Color.fromARGB(255, 154, 166, 255),
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.white,
    surface: Colors.black,
    surfaceContainer: Color.fromARGB(255, 40, 40, 40),
    onSurface: Colors.white,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 18,
      height: 1.5,
    ),
  ),
);

// Style Sheet für Markdown Textseiten:
MarkdownStyleSheet styleSheet(context) {
  return MarkdownStyleSheet(
    p: Theme.of(context).textTheme.bodyLarge,
    blockSpacing: 24,
    listBullet: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
    listBulletPadding: const EdgeInsets.all(0),
    a: Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: Theme.of(context).colorScheme.secondary,
          decoration: TextDecoration.underline,
          decorationColor: Theme.of(context).colorScheme.secondary,
        ),
    h2: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
  );
}

// ButtonStyle für große abgerundete FilledButtons
ButtonStyle roundedButtonStyle = ButtonStyle(
  minimumSize: WidgetStateProperty.all(const Size(double.infinity, 48)),
  shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
);

// System Navigation transparent machen
makeSystemNavigationTransparent() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemStatusBarContrastEnforced: false,
    ),
  );
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge,
    overlays: [SystemUiOverlay.top],
  );
}
