import 'package:flutter/material.dart';
import 'package:sar/widgets/text_page.dart';

class Impressum extends StatelessWidget {
  const Impressum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextPage(textFile: "impressum.txt", appBarTitle: "Impressum");
  }
}
