import 'dart:ui';

import 'package:flutter/material.dart';

const Color sarBlue = Color(0xff253185); // Farbe vom SaR Logo

// Theme:
ThemeData theme = ThemeData(
  appBarTheme: AppBarTheme(color: sarBlue, brightness: Brightness.dark), // Alle AppBars haben die Farbe sarBlue
);

// Style für runde, große ElevatedButtons:
ButtonStyle roundedButtonStyle = ButtonStyle(
  minimumSize: MaterialStateProperty.all(Size(double.infinity, 48)),
  backgroundColor: MaterialStateProperty.all(sarBlue),
  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
);
