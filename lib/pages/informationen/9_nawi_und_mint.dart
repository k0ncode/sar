import 'package:flutter/material.dart';
import 'package:sar/design/widgets/text_widgets.dart';
import 'package:sar/design/widgets/video_widget.dart';

class NawiUndMint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ArticlePage(
      appBarTitle: "Naturwissenschaften und MINT-EC",
      content: [
        Headline1("Naturwissenschaften und MINT-EC"),
        Headline2("Schwerpunktgruppe NaWi"),
        Paragraph(
            "An der Schule am Ried gibt es in der 5. & 6. Klasse eine Schwerpunktgruppe für Kinder, die sich besonders für Naturwissenschaften (NaWi) interessieren. Dem in dieser Altersstufe oft stark ausgeprägten Forscherdrang soll darin Raum und Zeit gegeben werden. Spannende Fragestellungen und ein sehr hoher Anteil experimenteller und fächerübergreifender Arbeit sollen die Neugier der Kinder wachhalten und das Interesse an den Naturwissenschaften fördern."),
        Paragraph(
            "Für den Schwerpunkt meldet man sich verbindlich für zwei Jahre an. Das Angebot gilt für die Bildungsgänge Realschule und Gymnasium. Zusätzlich zum normalen Unterricht nehmen die Kinder an einem zweistündigen NaWi-Unterricht teil."),
        Paragraph(
            "Da das gemeinsame Forschen stark experimentell ausgerichtet ist, ist das Angebot nicht kostenlos. Zwar wird die Schwerpunktgruppe finanziell durch die BVB-Stiftung unterstützt, dennoch ist ein Kostenanteil von 15 € pro Monat notwendig, damit sind alle Kosten, auch alle Verbrauchsmaterialien abgedeckt."),
        ArticleImage("14"),
        Headline2("Arbeitsgemeinschaften"),
        Paragraph(
            "Für alle Schüler/innen bieten folgende schulzweigübergreifend Arbeitsgemeinschaften die Möglichkeit, sich mit naturwissenschaftlichen Themen zu beschäftigen: Natur & Garten, Solar AG, Jugend forscht, „Mädchen experimentieren“, Informatik AG, Bienen & Imkerei AG."),
        Paragraph(
            "Mehrfach wurde die Natur & Garten – AG unsere Schule beim „Schule und Natur – Wettbewerb“ mit dem 1. Preis ausgezeichnet. Sehr erfolgreich war auch die Teilnahme an regionalen und überregionalen Wettbewerben zur Solartechnik („Solarautos“)."),
        Paragraph(
            "Auch dieses Jahr erhielt die Schule am Ried zum wiederholten Mal das Prädikat „Umweltschule“ für ihre Arbeit zu den Themen ökologische Bildung und nachhaltige Entwicklung. Weitere Erfolge: u.a. VDI-Wettbewerb und Jugend forscht (Sieger im Regionalwettbewerb)."),
        ArticleImage("15"),
        Headline2("MINT-Kurse in 9/10"),
        Paragraph(
            "Der Wahlunterricht in den Gymnasialklassen 9 & 10 bietet alternativ zur dritten Fremdsprache die Möglichkeit mit jeweils zwei Stunden an einem weitgefassten Themen-Angebot der MINT-Fächer in Projekten mit einem Schwerpunkt in Informatik teilzunehmen. Dabei soll das kompetenzorientierte Abschlussprofil in den MINT-Fächern mit dem Fokus auf Experimentieren, Dokumentieren und Präsentieren noch mals geschärft werden. Gleichzeitig können in diesen halbjährlichen Kursen die Grundlagen für eine Teilnahme an den zahlreichen MINT-Wettbewerben gelegt werden."),
        Paragraph("Auch im WPU-Unterricht der Realschule werden Kurse zu MINT-Themen angeboten."),
        Headline2("Gymnasiale Oberstufe"),
        Paragraph(
            "Nach dem Eintritt in die gymnasiale Oberstufe kann das Interesse an den Naturwissenschaften in Leistungs- und Grundkursen weiter vertieft werden. Seit mehr als 30 Jahren finden in allen drei Naturwissenschaften Leistungskurse und Abiturprüfungen statt, wobei der Mädchenanteil in diesen Kursen überdurchschnittlich hoch ist. Studienfahrten mit biologischer Zielrichtung, z.B. an die kroatische Küste oder Helgoland, runden das schulische Angebot ab."),
        ArticleImage("16"),
        Headline2("Wettbewerbe"),
        Paragraph(
            "Im MINT-Bereich gibt es eine Vielzahl an Wettbewerben. So kann man sein Können und Wissen beispielsweise beim Solarrennen, bei Jugend Forscht, bei Mathe- und informatikwettbewerben und auch bei den Bio/ Chemie/ und Physik- Olympiaden unter Beweis stellen."),
        Headline2("MINT-EC Schule"),
        Paragraph(
            "Die Schule am Ried ist Mitglied im nationalen mathematisch-naturwissenschaftlichen Schulnetzwerk „MINT-Excellence Cluster“ (MINT-EC). Aufgrund dessen eröffnet sich u.a. ein breites Veranstaltungs- und (Spitzen-)Förderangebot für unsere Schülerinnen und Schüler. Eine besondere Würdigung erfahren seit 2017 unsere Oberstufenschülerinnen und -schüler durch die Verleihung des MINT-Zertifikates als Urkunde mit dem Abiturzeugnis. Neben der erfolgreichen Teilnahme an Grund- und Leistungskursen, an zusätzlichen außerunterrichtlichen Lehrveranstaltungen und an den MINT-Wettbewerben wird hier auch wissenschaftliches Arbeiten honoriert."),
        ArticleImage("17"),
        Paragraph(""),
        Headline2("Video zum Schwerpunkt NaWi an der Schule am Ried:"),
        Video("https://youtu.be/YxXeKvJws2Y"),
        Paragraph(""),
        Paragraph("Weitere Informationen auf der Schulwebsite:"),
        Link("http://www.schule-am-ried.de/schwerpunkte-profil/schwerpunkt-naturwissenschaften-mint/")
      ],
    );
  }
}