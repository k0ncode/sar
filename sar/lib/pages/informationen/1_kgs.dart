import 'package:flutter/material.dart';
import 'package:sar/design/widgets/text_widgets.dart';

class KooperativeGesamtschule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ArticlePage(
      appBarTitle: "Kooperative Gesamtschule",
      content: [
        Headline1("Kooperative Gesamtschule (KGS): Was ist das?"),
        Paragraph(
            "Die Schule am Ried ist eine Kooperative Gesamtschule (KGS). Hauptschul-, Realschulund Gymnasialzweig bilden die drei Säulen dieser Schulform. Sie entsprechen dem dreigliedrigen Schulwesen. Dies bedeutet, dass sich beispielsweise der Bildungsgang Gymnasium auf der Schule am Ried in Bezug auf Unterrichtsinhalte und Anforderungen nicht von einem reinen Gymnasium unterscheidet. Analoges gilt für die Hauptund Realschule. Auch die Abschlüsse, die an einer KGS erteilt werden, entsprechen 1:1 den Abschlüssen der Hauptschule, der Realschule und dem des Gymnasiums (Abitur). Der Unterricht findet also schulformspezifisch statt, im Regelfall im Jahrgang 5 in vier Gymnasialklassen (G9), drei Realschulklassen und einer Hauptschulklasse. Zugleich verstehen wir uns allesamt als Schulgemeinschaft und finden in Arbeitsgemeinschaften und speziellen Projekten auch unterrichtlich zusammen."),
      ],
    );
  }
}
