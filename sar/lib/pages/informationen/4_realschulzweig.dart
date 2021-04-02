import 'package:flutter/material.dart';
import 'package:sar/design/widgets/text_widgets.dart';

class Realschulzweig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ArticlePage(
      appBarTitle: "Realschulzweig",
      content: [
        Headline1("Realschulzweig (Realschule)"),
        Paragraph("ist einer der Bildungsgänge, die unsere Schüler/ innen im Anschluss an die Grundschule besuchen können."),
        Paragraph(
            "Englisch wird in der Regel bereits in der Grundschule begonnen und ist die erste Fremdsprache ab der 5. Klasse. Als zweite Fremdsprache kann im Rahmen des Wahlpflichtunterrichts in der 7. Klasse Französisch gewählt werden. Die Wahl der 2. Fremdsprache ist für zwei Jahre verpflichtend. Am Ende der 8. Klasse können unsere Schüler/innen entscheiden, die Fremdsprache weiterzuführen oder in den Wahlpflichtbereich zu wechseln."),
        Paragraph(
            "Für alle Schüler/innen, die keine zweite Fremdsprache erlernen wollen, umfasst der Wahlpflichtbereich unterschiedliche Aufgabenfelder, so z.B. Hauswirtschaft, Technik/Werken, Kunst, Ehrenamt oder ein Theaterprojekt."),
        Paragraph(
            "In den Jahrgangsstufen 5 und 6 werden in einer Schwerpunktgruppe Sport zwei Stunden mehr Sport, in einer Gruppe Musik zwei Stunden mehr Musik erteilt und in einer Gruppe NaWi zwei Stunden zusätzlicher Unterricht in Naturwissenschaften erteilt."),
        Paragraph(
            "Im Realschulzweig ist das Thema Berufsvorbereitung von großer Bedeutung. Im Rahmen des Faches Arbeitslehre wird im 2. Halbjahr des 8. Schuljahres sowie im ersten Halbjahr des 9. Schuljahres das zweiwöchige Betriebspraktikum vorbereitet, das zweimal im 9. Schuljahres stattfindet. Unter anderem werden dazu auch Betriebserkundungen durchgeführt. Darüber hinaus nehmen die 10. Klassen am „Tag der Berufsschulen“ teil."),
        Paragraph("Im Rahmen der „Klasse!Musik“ besteht die Möglichkeit durchgehend Musikunterricht zu erhalten."),
        Paragraph(
            "In enger Zusammenarbeit mit der Berufsberatung der Bundesagentur für Arbeit bietet die Schule Beratungsangebote in den Klassen sowie Einzelberatungsgespräche und den Besuch des Berufsinformationszentrums an. Ebenso werden unterschiedliche Institutionen für die Durchführung eines Bewerbertrainings in die Schule eingeladen."),
        Headline2("Übergänge"),
        Paragraph(
            "Als Gesamtschule nehmen wir die Schullaufbahnberatung besonders ernst. Im Rahmen von Beratungsgesprächen kann auf die individuelle Entwicklung unserer Schüler/innen reagiert werden, ohne dass eine andere Schule gesucht werden muss. Falls notwendig, kann ein Wechsel in den Hauptschulzweig zum Ende eines Schulhalbjahres erfolgen."),
        Paragraph(
            "Leistungsstarke Realschüler/innen können auf Empfehlung der Klassenkonferenz der unterrichtenden Lehrer/innen zum Ende des jeweiligen Schuljahres in die parallel Klasse des Gymnasialzweiges wechseln, ohne den Schulstandort verlassen zu müssen."),
        Paragraph(
            "Bei entsprechender Eignung ist nach der 10. Klasse natürlich der Übergang in unsere gymnasiale Oberstufe möglich. Schüler/innen ohne zweite Fremdsprache können diese bei uns in der gymnasialen Oberstufe erlernen und damit ihre Fremdsprachenverpflichtung für das Abitur erfüllen."),
        Headline2("Angebote & Fahrten"),
        BulletPoint("Zwei Klassenfahrten in R6 und R10."),
        BulletPoint("Freiwillige Skifahrt in R8."),
        BulletPoint("Schüleraustausch mit England, Frankreich, USA und Japan."),
        BulletPoint("Erstes Betriebspraktikum in R8."),
        BulletPoint("Zweites Betriebspraktikum in R9."),
        BulletPoint("Betriebspraktikum in Birmingham/ GB. (freiwillig)."),
        BulletPoint("Bilinguales EU-Seminar mit z.B. Polen (Klasse 9)"),
        BulletPoint("Jährliche Musikprobentage auf Burg Breuberg (freiwillig)", isLast: true),
        ArticleImage("06"),
        Paragraph(""),
        Paragraph("Weitere Informationen auf der Schulwebsite:"),
        Link("http://www.schule-am-ried.de/schule/realschule/"),
      ],
    );
  }
}
