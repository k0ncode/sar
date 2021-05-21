import 'package:flutter/material.dart';
import 'package:sar/design/widgets/text_widgets.dart';

class GymnasialeOberstufe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ArticlePage(
      appBarTitle: "Gymnasiale Oberstufe",
      content: [
        Headline1("Die Gymnasiale Oberstufe"),
        Paragraph("Die dreijährige Oberstufenzeit gliedert sich in die einjährige Einführungsphase und die zweijährige Qualifikationsphase."),
        Paragraph("Der Unterricht der Einführungsphase erfolgt im Klassenverband."),
        Paragraph(
            "Um die Verpflichtung zu erfüllen, in der Einführungsphase zwei Fremdsprachen zu erlernen, können unsere Schülerinnen und Schüler den Unterricht in Englisch, Französisch oder Latein bzw. Italienisch und Spanisch fortsetzen, oder mit Italienisch neu beginnen."),
        Paragraph(
            "Um eine bestmögliche Vorbereitung auf die Qualifikationsphase zu bieten, wird für die Hauptfächer Deutsch und Mathematik schwerpunktmäßig Kompensationsunterricht erteilt. Wahlmöglichkeiten bestehen in der Einführungsphase im Bereich Fremdsprachen und Naturwissenschaften. Zudem können Informatik bzw. Erdkunde, oder eine weitere Fremdsprache als Wahlfach belegt werden."),
        ArticleImage("08"),
        Paragraph(
            "Ziel der Kursorganisation der Qualifikationsphase an der Schule am Ried ist es, ein breites Fächerangebot anzubieten. Leistungskurse finden in Deutsch, Englisch, Französisch, Politik und Wirtschaft, Mathematik, Biologie, Chemie und Physik sowie in Musik statt. Informatik wird ebenfalls als Kurs angeboten. Für besonders interessierte Schüler/innen besteht auch die Möglichkeit drei Leistungskurse zu belegen."),
        Paragraph(
            "Vorbereitungsveranstaltungen für Studium und Berufswahl finden über die gesamte Oberstufe verteilt statt. Hierzu kooperieren wir mit den umliegenden Universitäten und Hochschulen, der Agentur für Arbeit und regionalen Wirtschaftsunternehmen. In der Einführungsphase findet ein Betriebspraktikum statt."),
        Paragraph(
            "Am Ende der Einführungsphase liegt die 4-tägige Berlinfahrt und in der Qualifikationsphase (Q3) geht die Studienfahrt meist ins europäische Ausland."),
        Paragraph("Auch im Schulchor und im Schulorchester sowie bei Sportturnieren sind die Oberstufenschüler/innen zahlreich vertreten."),
        Paragraph(
            "Zudem gibt es reichhaltige Angebote im Rahmen der MINT-Aktivitäten an der Schule am Ried (z.B. die Teilnahme an Wettbewerben oder an Jugend Forscht). Für besonders engagierte Schülerinnen und Schüler besteht die Möglichkeit das MINT-EC-Zertifikat für herausragende MINT-Leistungen zu erhalten."),
        Paragraph(""),
        Paragraph("Weitere Informationen auf der Schulwebsite:"),
        Link("http://www.schule-am-ried.de/schule/oberstufe/"),
      ],
    );
  }
}