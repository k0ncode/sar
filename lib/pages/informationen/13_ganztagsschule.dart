import 'package:flutter/material.dart';
import 'package:sar/design/widgets/text_widgets.dart';

class Ganztagsschule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ArticlePage(
      appBarTitle: "Ganztagsschule",
      content: [
        Headline1("Ganztagsschule"),
        Paragraph("Die Schule am Ried ist Ganztagsschule im „Ganztagsprofil 2“."),
        Headline2("Offene Nachmittagsbetreuung"),
        Paragraph(
            "An der offenen Nachmittagsbetreuung von 13:00-16:00 Uhr am Spielecontainer und in Raum 09 können Schüler/innen ebenfalls ohne Voranmeldung teilnehmen. Vielfältige Bewegungsspiele und Brettspiele stehen zur Verfügung und können ausgeliehen werden."),
        Headline2("Lernzeit"),
        Paragraph(
            "Schüler/innen können ohne Voranmeldung in der Zeit von 7.30-8.30 Uhr und 12.15- 14.00 Uhr an einer offenen „Lernzeit“ in der Schulbibliothek teilnehmen zum individuellen Lernen, zur Internetrecherche am PC oder einfach nur zum Schmökern. Eine Lehrkraft steht zur Unterstützung und für Fragen bereit."),
        Headline2("Hausaufgabenbetreuung (HAB)"),
        Paragraph(
            "An Schultagen betreut eine Lehrkraft gemeinsam mit Oberstufenschüler/innen die angemeldeten Kinder aus den 5. und 6. Klassen (Gym, RS) von 13:15 bis 14:00 Uhr beim Erledigen der Hausaufgaben. Dabei gibt es nicht nur Hilfestellungen zu den aktuellen Hausaufgaben, sondern auch Tipps zum sinnvollen Lernen. Nach Beendigung der Hausaufgaben werden Diktate trainiert oder Lernstoff vor Klassenarbeiten bzw. Tests wiederholt. Zusätzlich stehen Sprach- und Rechenspiele zur Verfügung."),
        Paragraph(
            "Unsere Betreuer/innen bewerben sich für ihren Dienst in der HAB mit guten Leistungen, angemessenen sozialen Umgangsformen und absoluter Verlässlichkeit. Sie sorgen für eine angenehme Lernstimmung und vertrauensvolle Atmosphäre in den Übungsräumen."),
        Paragraph(
            "Das HAB-Angebot ist kostenfrei; es wird lediglich eine Anmeldegebühr von 10 EUR pro Schulhalbjahr erhoben. Die HAB kann täglich oder nur an einzelnen Tagen besucht werden. Das legen die Eltern am Anfang eines jeden Schulhalbjahres mit dem Träger der HAB, dem Schulförderverein, vertraglich fest."),
        Headline2("Arbeitsgemeinschaften"),
        Paragraph(
            "Alle Schüler/innen finden ein umfangreiches und attraktives Angebot von Arbeitsgemeinschaften (AGs) vor. Diese haben das Ziel, den unterschiedlichen Begabungen und Interessen unserer Schüler/innen entgegenzukommen sowie deren Sozialverhalten zu stärken. Weitere ausführliche Informationen hierzu entnehmen Sie bitte der AG-Broschüre:"),
        Link("http://www.schule-am-ried.de/infos/infomaterial/"),
        ArticleImage("25"),
        Headline2("Individuelle Förderung"),
        Paragraph(
            "Um den heterogenen Lernvoraussetzungen und dem unterschiedlichen Lernverhalten und Leistungsvermögen der Schüler/innen gerecht zu werden, bieten wir ein zusätzliches individuelles Förderangebot an."),
        Paragraph(
            "Neben LRS- und Dyskalkuliekursen gibt es ein breites Förderangebot in den Fächern Deutsch, Englisch und Mathematik sowie nach Bedarf zusätzliche Kurse z.B. in Chemie oder Französisch."),
        Paragraph("Die Kurse finden im Regelfall nachmittags nach dem regulären Unterricht statt."),
        Headline2("Schulbibliothek"),
        Paragraph(
            "Die Schulbibliothek bietet die Nutzung von ca. 8.000 Medien. 220 qm mit mehr als 50 Arbeitsplätzen und 6 Schüler-PCs mit Internetzugang bieten die Möglichkeit, die Schulbibliothek auch als Unterrichtsraum, Arbeitsraum in Freistunden oder zur Erledigung der Hausaufgaben zu nutzen. Die Schulbibliothek hat von Montag bis Freitag von 8:30 bis 12:00 Uhr geöffnet."),
        ArticleImage("26"),
        Headline2("Cafeteria"),
        Paragraph(
            "In der Schule am Ried gibt es einen eine Cafeteria mit Kiosk, die professionell betrieben wird, und die in der Zeit von 07.30 Uhr bis 14.00 Uhr geöffnet ist. Hier werden neben Getränken und kleinen Imbissen täglich zwei warme Mittagessen angeboten."),
        Paragraph(""),
        Paragraph("Weitere Informationen zu der Schule am Ried als Ganztagsschule:"),
        Link("http://www.schule-am-ried.de/ganztagsschule/"),
      ],
    );
  }
}