import 'package:flutter/material.dart';

const Color sarBlue = Color(0xff253185); // Farbe vom SaR Logo

// Allgemeines App Theme:
ThemeData theme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: sarBlue,
    onPrimary: Colors.white,
    secondary: sarBlue,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
  ),
  appBarTheme: const AppBarTheme(color: sarBlue),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: sarBlue,
    ),
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 18,
      height: 1.5,
    ),
  ),
);

// ButtonStyle für große blaue ElevatedButtons
ButtonStyle roundedButtonStyle = ButtonStyle(
  minimumSize: MaterialStateProperty.all(const Size(double.infinity, 48)),
  backgroundColor: MaterialStateProperty.all(sarBlue),
  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
);
