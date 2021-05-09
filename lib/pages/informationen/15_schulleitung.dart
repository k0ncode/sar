import 'package:flutter/material.dart';
import 'package:sar/design/widgets/text_widgets.dart';

class Schulleitung extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ArticlePage(
      appBarTitle: "Schulleitung",
      content: [
        Headline2("Schulleitung"),
        Paragraph("Schulleiter: Christof Gans"),
        Paragraph("Stellvertretender Schulleiter: Thomas Müller-Wilms"),
        Paragraph("Leiter der gymn. Oberstufe: Christian Hinkel"),
        Paragraph("Fachbereichsleiter/in: Dr. Ute Lembeck (FB I)"),
        Paragraph("Oliver Sust (FB II)"),
        Paragraph("Christian Hinkel (FB III)"),
        Paragraph("Gymnasialzweigleiter: Dr. Florian Krick"),
        Paragraph("Haupt- und Realschulzweigleiter: Julien Bettner (kommissarisch)"),
        Paragraph("Koordination Ganztagsangebote: Claudia Erben"),
        Paragraph("Koordination Förderangebote: Verena Ehemann"),
        Headline2("Sekretariat"),
        Paragraph("Andrea Freiheit"),
        Paragraph("Admira Karahmetovic"),
        Paragraph("Florence Lerch"),
        Headline2("Hausverwaltung"),
        Paragraph("Thomas Fabian"),
      ],
    );
  }
}
