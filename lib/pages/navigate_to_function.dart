import 'package:flutter/material.dart';

// Funktion um auf eine andere Seite zu navigieren:
void navigateTo(Widget destinationPage, BuildContext context) {
  final MaterialPageRoute route = MaterialPageRoute(builder: (context) => destinationPage);
  Navigator.push(context, route);
}
