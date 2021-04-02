import 'package:flutter/material.dart';
import 'package:sar/design/widgets/text_widgets.dart';

class Jugendhilfe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ArticlePage(
      appBarTitle: "Jugendhilfe",
      content: [
        Headline1("Jugendhilfe in der Schule"),
        Paragraph(
            "Die Jugendhilfe in der Schule am Ried ist ein Projekt des Internationalen Bundes. Aufgabe der Jugendhilfe ist die Förderung und Stärkung von Schüler/innen hinsichtlich ihrer individuellen Ressourcen und Kompetenzen, ihrer Bildungsbeteiligung sowie ihrer gesellschaftlichen Chancen und Teilhabe."),
        Paragraph("Die Arbeitsschwerpunkte sind:"),
        BulletPoint("Klassenbegleitung durch Soziales Lernen und Projekttage"),
        BulletPoint("Nachmittags-AGs und offene Angebote"),
        BulletPoint("Lernferien"),
        BulletPoint("Vertrauliche Einzelberatung"),
        BulletPoint("Vermittlung zu weiterführenden Einrichtungen und Angeboten."),
        Paragraph(
            "Alle Schüler/innen, Eltern und Lehrer/ innen können sich mit ihren Anliegen und Sorgen an das Jugendhilfe- Team wenden, das täglich im Raum R15 erreichbar ist."),
        Paragraph("Tel.: 069/212-47529"),
        ArticleImage("27"),
      ],
    );
  }
}
