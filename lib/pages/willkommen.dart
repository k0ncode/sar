import 'package:flutter/material.dart';
import 'package:sar/widgets/text_page_widget.dart';

class Willkommen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextPage(textFile: "willkommen.txt", appBarTitle: "Willkommen");
  }
}
