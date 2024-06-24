import 'package:flutter/material.dart';
import 'package:sar/widgets/text_page.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextPage(textFile: "news.txt", appBarTitle: "News");
  }
}
