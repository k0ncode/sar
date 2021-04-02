import 'package:flutter/material.dart';
import 'package:sar/design/widgets/text_widgets.dart';
import 'package:sar/design/widgets/video_widget.dart';

class Musik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ArticlePage(
      appBarTitle: "Musik",
      content: [
        Headline1("Musik an der Schule am Ried"),
        Headline2("Schwerpunktgruppe Musik (Bläser-Gruppe)"),
        Paragraph(
            "Musik tut gut. Besonders jungen Menschen. Mit unserem Schwerpunkt Musik stärken wir Bereiche, die in der Schule sonst oft zu kurz kommen: Musik aktiviert in ganz besonderer Weise, und zwar körperlich und emotional. Musik verbindet und schafft starke Gemeinschaftserlebnisse. Und dies alles gilt vor allem dann, wenn man selbst singt oder ein Instrument spielt. Deshalb leistet Musik einen enorm wichtigen Beitrag, wenn es um die Erziehung unserer Kinder geht. Musik, das ist „Bildung mit Kopf und Herz und Hand“."),
        Paragraph(
            "Für den Besuch der Schwerpunktgruppe Musik sind keine musikalischen Vorkenntnisse erforderlich. Interessierte Kinder haben hier die Möglichkeit ein Instrument neu zu erlernen."),
        ArticleImage("04"),
        Paragraph(
            "Für die Schwerpunktgruppe Musik melden Sie Ihr Kind verbindlich für zwei Jahre an. Das Angebot gilt für die Bildungsgänge Realschule und Gymnasium. Ihr Kind bekommt für diese Zeit ein Blasinstrument von der Schule zur Verfügung gestellt. In einer „Schnupperveranstaltung“ am Anfang des fünften Schuljahres lernt Ihr Kind die Instrumente kennen, die zur Auswahl stehen. Einmal in der Woche erhalten die Kinder in Kleingruppen Unterricht auf ihrem Instrument. Dieser wird von kooperierenden Lehrkräften der Musikschule Bergen-Enkheim durchgeführt. Außerdem erleben die Kinder von Anfang an das Zusammenspielen im Orchester und genießen den Erfolg der ersten gemeinsamen Auftritte."),
        Paragraph("Aktuelle Informationen zum Angebot der Schwerpunktgruppe Musik entnehmen Sie bitte der Homepage der Schule."),
        Headline2("Klasse!Musik"),
        Paragraph(
            "Die Schule am Ried bietet einen Schwerpunkt Musik für die Jahrgänge 7 bis 10 (Klasse!Musik) an. Alle Kinder, die daran teilnehmen, werden gemeinsam in einer Klasse unterrichtet. Damit soll Schülerinnen und Schülern unserer Bläsergruppen die Möglichkeit geboten werden, weiterhin musikalisch intensiv betreut zu werden. Aber auch Kinder mit anderen Instrumenten haben hier die Gelegenheit, neu in den Musikschwerpunkt einzusteigen."),
        Headline2("Arbeitsgemeinschaften & Konzerte"),
        Paragraph(
            "An der Schule am Ried existiert ein breites Angebot an musikalischen Arbeitsgemeinschaften, deren Aktivitäten fest in das Schulleben integriert sind (zweimal jährlich stattfindende Intensivprobentage, Sommer- und Weihnachtskonzert, Bandkonzert, musikalische Umrahmung schulischer Feiern)."),
        Paragraph("Folgende AG’s werden derzeit angeboten: Chor 5, Chor 6, Großer Chor, Großes Orchester, Streicher AG, Vororchester und Schulband."),
        ArticleImage("10"),
        Headline2("Musikprobentage"),
        Paragraph(
            "Zweimal im Jahr fahren wir im Rahmen einer Musikfreizeit zur Jugendherberge „Burg Breuberg“. An diesen Intensivprobentagen kann jeder teilnehmen, der in einer musikalischen AG der Schule ist."),
        ArticleImage("11"),
        Headline2("Rock, Pop, Jazz"),
        Paragraph(
            "In diesen Sparten haben wir zwei starke Institutionen, mit denen wir gerne kooperieren, nämlich mit der „Frankfurter Musikwerkstatt“ (FMW) und mit dem Projektbüro „Jazz und improvisierte Musik in die Schule“."),
        Headline2("Grundkurs/ Leistungskurs"),
        Paragraph(
            "Die Schule am Ried bietet jedes Jahr Musikgrundkurse in der Oberstufe an. Ein Leistungskurs Musik wird bei ausreichendem Schülerinteresse angeboten."),
        Headline2("„Hessische Schule mit Schwerpunkt Musik“"),
        Paragraph(
            "Für die hervorragende musikalische Arbeit hat die Schule am Ried vom Hessischen Kultusministerium im Sommer 2018 zum dritten Mal in Folge das Zertifikat „Hessische Schule mit Schwerpunkt Musik“ erhalten."),
        ArticleImage("12"),
        Paragraph(""),
        Headline2("Video zum Schwerpunkt Musik an der Schule am Ried:"),
        Video("https://youtu.be/z5MSNOzQsUo"),
        Paragraph(""),
        Paragraph("Weitere Informationen auf der Schulwebsite:"),
        Link("http://www.schule-am-ried.de/schwerpunkte-profil/schwerpunkt-musik/"),
      ],
    );
  }
}
