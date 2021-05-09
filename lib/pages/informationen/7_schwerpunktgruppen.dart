import 'package:flutter/material.dart';
import 'package:sar/design/widgets/text_widgets.dart';

class Schwerpunktgruppen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ArticlePage(
      appBarTitle: "Schwerpunktgruppen 5/6",
      content: [
        Headline1("Bei der Anmeldung für eine 5. Klasse der Schule am Ried können Sie Ihr Kind auch für eine unserer Schwerpunktgruppen anmelden:"),
        BulletPoint("Schwerpunktgruppe Musik"),
        BulletPoint("Schwerpunktgruppe NaWi"),
        BulletPoint("Schwerpunktgruppe Sport"),
        Paragraph("(Details zu den Schwerpunkten auf den folgenden Seiten)"),
        Paragraph(
            "Wenn Sie die Teilnahme Ihres Kindes an einer der Schwerpunktgruppen wünschen, sollten Sie dies bei der Anmeldung für die weiterführende Schule angeben. Die entsprechenden Formulare finden Sie unter:"),
        Link("http://www.schule-am-ried.de/anmeldung-5-klasse/"),
        Paragraph(
            "Die Teilnahme an den Schwerpunktgruppen ist leider nicht kostenlos, da u.a. entsprechende Trainer (Sport) oder Musiklehrer (Kooperation mit der Jugendmusikschule) engagiert werden bzw. Musikinstrumente als Leihinstrumente ausgegeben werden und Material für die naturwissenschaftlichen Experimente erworben werden müssen."),
        Paragraph("Daher belaufen sich die Kosten pro Monat auf 15,- Euro für alle Schwerpunktgruppen."),
        Paragraph(
            "Aufgrund der besonderen pädagogischen Konzeption der Klassen 5 und 6 im Hauptschul-Bereich sind die Schwerpunktgruppen für alle Kinder im Bildungsgang Gymnasium und Realschule wählbar."),
        Paragraph(""),
        Paragraph("Weitere Informationen auf der Schulwebsite:"),
        Link("http://www.schule-am-ried.de/schwerpunkte-profil/schwerpunktgruppen-56/"),
      ],
    );
  }
}
