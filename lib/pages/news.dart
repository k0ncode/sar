import 'package:flutter/material.dart';
import 'package:sar/widgets/text_page_widget.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextPage(textFile: "news.txt", appBarTitle: "News");
  }
}
