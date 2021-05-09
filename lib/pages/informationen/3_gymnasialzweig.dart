import 'package:flutter/material.dart';
import 'package:sar/design/widgets/text_widgets.dart';

class Gymnasialzweig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ArticlePage(
      appBarTitle: "Gymnasialzweig",
      content: [
        Headline1("Gymnasialzweig (Gymnasialzweig)"),
        Paragraph(
            "Der Gymnasialzweig mit seinem Fächerangebot und seinen Bildungsinhalten entspricht den Richtlinien des Kultusministeriums für Gymnasien und vermittelt die Qualifikationen für die gymnasiale Oberstufe."),
        Paragraph("Seit 2014 sind wir wieder G9-Gymnasium, was u.a. ein sehr großer Wunsch der ansässigen Elternschaft war."),
        Paragraph(
            "Die Umwandlung zu G9 bringt mit sich, dass die Pflichtstundenzahl in den Klassen 5 bis 8 bei rund 29 Wochenstunden liegt. Hinzu kommen u.U. freiwillige bzw. zusätzliche Angebote wie die Schwerpunktgruppen 5/6 (NaWi, Musik oder Sport), Arbeitsgemeinschaften oder Förderunterricht. Seit dem Schuljahr 2019/20 wird das Unterrichtsangebot um je eine Klassenlehrerstunde / Soziales Lernen in den Klassen 6 bis 8 und eine Stunde Medienkunde in Klasse 6 erweitert. Die aktuell gültige Stundentafel finden Sie im Internet unter: "),
        Link("http://www.schule-am-ried.de/schule/gymnasium/"),
        Paragraph(
            "Als erste Fremdsprache bietet die Schule am Ried Englisch ab Klasse 5 an. Ab der 7. Klasse kommt als zweite Fremdsprache Französisch oder Latein hinzu. Latein kann mit dem Latinum abgeschlossen werden. Ab Klasse 9 gibt es die Möglichkeit, eine dritte Fremdsprache zu erlernen. Es werden die Sprachen Italienisch und Spanisch."),
        Paragraph(
            "Zusätzlich können ab Klasse 7 in Spanisch oder Japanisch in einer Arbeitsgemeinschaft erste Grundlagen erworben werden. In der Oberstufe kommt Italienisch als weiteres Sprachangebot hinzu."),
        Paragraph(
            "Alternativ zur 3. Fremdsprache wird ab der Jahrgangsstufe 9 Wahlunterricht aus dem MINT-Bereich (Mathematik, Informatik, Naturwissenschaften, Technik) mit 2 Wochenstunden angeboten."),
        Paragraph(
            "Nach der Verabschiedung der neuen hessischen Bildungsstandards sind von den Lehrkräften unserer Schule neue Konzepte erarbeitet worden. Diese sind kompetenzorientiert ausgelegt, damit die Schülerinnen und Schüler befähigt werden, ihr Wissen anwendungsorientiert einsetzen zu können."),
        Paragraph(
            "Bereits in den Klassen 5 und 6 erwerben unsere Schülerinnen und Schüler des Bildungsganges Gymnasium Grundkenntnisse im Umgang mit Computern und dem Internet. Ein Fokus liegt dabei auf der Arbeit mit der HPI Schulcloud, die wir als digitale Lernplattform nutzen."),
        Paragraph("Zu Beginn der Klasse 5 können Schwerpunkte in den Bereichen Musik, Sport oder NaWi gewählt werden"),
        Paragraph(
            "In den höheren Klassen rückt verstärkt die Vermittlung von Fähigkeiten, Fertigkeiten und Techniken in den Fokus, die unsere Schülerinnen und Schüler im Gymnasialzweig in die Lage versetzen, zunehmend selbstständig, zielorientiert und in kooperativen Zusammenhängen zu arbeiten."),
        Paragraph(
            "Exkursionen wie z.B. zur Gedenkstätte Buchenwald oder zum EU-Parlament in Straßburg bzw. nach Trier (Latein) runden das Programm in der Mittelstufe ab."),
        Headline2("Angebote & Fahrten"),
        BulletPoint("Zwei Klassenfahrten in der Mittelstufe (Klasse 6 und 10)."),
        BulletPoint("Berlinfahrt und Studienfahrt in der Oberstufe."),
        BulletPoint("Freiwillige Skifahrt in Klasse 8."),
        BulletPoint("Schüleraustausch mit England und Frankreich in der Mittelstufe."),
        BulletPoint("Betriebspraktikum (Klasse 9) in Frankfurt oder in Birmingham/GB."),
        BulletPoint("Bilinguales EU-Seminar mit z.B. Polen (Klasse 9-10)."),
        BulletPoint("Schüleraustausch mit Italien, USA und Japan in der Oberstufe."),
        BulletPoint("Jährliche Musikprobentage Burg Breuberg (freiwillig).", isLast: true),
        ArticleImage("05"),
        Paragraph(""),
        Paragraph("Weitere Informationen auf der Schulwebsite:"),
        Link("http://www.schule-am-ried.de/schule/gymnasium/")
      ],
    );
  }
}
