import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

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
  appBarTheme: const AppBarTheme(color: sarBlue, foregroundColor: Colors.white),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 18,
      height: 1.5,
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(seedColor: sarBlue, brightness: Brightness.dark),
  appBarTheme: const AppBarTheme(backgroundColor: sarBlue, foregroundColor: Colors.white),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: sarBlue),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 18,
      height: 1.5,
    ),
  ),
);

// ButtonStyle für große blaue ElevatedButtons
ButtonStyle roundedButtonStyle = ButtonStyle(
  minimumSize: WidgetStateProperty.all(const Size(double.infinity, 48)),
  // backgroundColor: WidgetStateProperty.all(sarBlue),
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
