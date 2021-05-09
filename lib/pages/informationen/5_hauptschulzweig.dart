import 'package:flutter/material.dart';
import 'package:sar/design/widgets/text_widgets.dart';

class Hauptschulzweig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ArticlePage(
      appBarTitle: "Hauptschulzweig",
      content: [
        Headline1("Hauptschulzweig (Hauptschule)"),
        Paragraph(
            "Der Hauptschulzweig umfasst die Klassen 5-9 und führt im Klassenverband zum Hauptschulabschluss bzw. zum qualifizierenden Hauptschulabschluss. Der Hauptschulabschluss eröffnet den Übergang in die Berufsausbildung und in ein differenziertes berufliches Schulwesen, das auch mittlere und höhere Bildungsabschlüsse ermöglicht."),
        Paragraph(
            "Zum allgemeinbildenden Unterricht gehört auch ein breites Spektrum im Fach Arbeitslehre. Hier wird den Lerngruppen ein Einblick in Holz- und Metallverarbeitung, Hauswirtschaft, Keramik, Wohn- und Umweltbereiche und Informatik vermittelt. Ab der 8. Klasse wird das Hauptaugenmerk auf die Vorbereitung auf die Berufsvorbereitung gelegt. Dazu gehören die beiden Berufspraktika, die spätere Berufswelt und weiterführende berufliche Schulen."),
        Paragraph(
            "In den Klassen 8 und 9 wird jeweils ein 3-wöchiges Blockpraktikum in einem Betrieb durchgeführt. Beide Praktika werden von den jeweiligen Klassenlehrkräften betreut."),
        Headline2("Lernzeit"),
        Paragraph(
            "Seit 2016 wird in den Jahrgängen 5 und 6 die „Lernzeit“ angeboten, in der die Schüler/innen nach dem regulären Unterricht gemeinsam mit der Klassenleitung in der Schulmensa zu Mittag essen, sportliche Bewegungsspiele ausüben und Hausaufgaben erledigen. Dieses pädagogische Konzept hat zur Folge, dass von Anbeginn eine kooperative, intensive Klassengemeinschaft gefordert und gefördert werden kann. Dies wird noch durch den „offenen Anfang“ vom Unterrichtsbeginn verstärkt."),
        ArticleImage("07"),
        Paragraph(
            "Die Anzahl der Lehrkräfte, die in einer Klasse unterrichtenden, ist bewusst klein gehalten, um eine bessere Teambildung zu erreichen und den Schüler/ innen feste Bezugspersonen zu geben. Die Klassenlehrkraft selbst unterrichtet die meisten Wochenstunden in der eigenen Klasse."),
        Paragraph("In Kooperation mit der Schulsozialarbeit findet wöchentlich das „soziale Lernen“ statt."),
        Headline2("Berufsvorbereitung"),
        Paragraph(
            "Klassenfahrten, Projektwochen, Betriebserkundungen in stadtteilnahen Groß- und Kleinfirmen, praxis- und anwendungsbezogener Umgang mit dem Computer sind selbstverständliche Bestandteile des Lehrprogramms. Berufsberatung und Berufswahlvorbereitung werden in Verbindung mit der Bundesagentur für Arbeit und der gjb (Gesellschaft für Jugendbeschäftigung e.V.) durchgeführt. In der Zusammenarbeit mit der gjb nehmen unsere Schüler am Frankfurter-Ausbildungs-Projekt teil. Hierbei handelt sich hier um eine Berufsorientierung und Ausbildungsplatzvermittlung für Frankfurter Schüler/innen mit Hauptschulabschluss."),
        Paragraph(
            "In den letzten Jahren ist es mit Hilfe der Schule so gelungen, allen Schüler/ innen mit Hauptschulabschluss entweder einen Ausbildungsplatz oder den Übergang auf eine Berufsfachschule zu ermöglichen."),
        Headline2("OloV – die hessenweite Strategie"),
        Paragraph(
            "Um unsere Schüler/innen beim Übergang von der Schule in eine Berufsausbildung zu unterstützen, werden schulische und außerschulische Maßnahmen, wie z.B. eine Potenzialanalyse für alle Schüler/innen der Klasse 7 durchgeführt (KomPo7)"),
        Paragraph(
            "Dies alles geschieht im Rahmen der landesweiten Strategie zur „Optimierung der lokalen Vermittlungsarbeit“ (OloV) bei der Schaffung und Besetzung von Ausbildungsplätzen in Hessen."),
        Headline2("Fremdsprachen"),
        BulletPoint("Fremdsprache (ab Klasse 5): Englisch"),
        BulletPoint("Arbeitsgemeinschaften: Spanisch, Japanisch", isLast: true),
        Paragraph(""),
        Paragraph("Weitere Informationen auf der Schulwebsite:"),
        Link("http://www.schule-am-ried.de/schule/hauptschule/"),
      ],
    );
  }
}
