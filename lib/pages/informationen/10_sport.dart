import 'package:flutter/material.dart';
import 'package:sar/design/widgets/text_widgets.dart';

class Sport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ArticlePage(
      appBarTitle: "Sport",
      content: [
        Headline1("Sport an der Schule am Ried"),
        Headline2("Schwerpunktgruppe Sport"),
        Paragraph(
            "Die Schülerinnen und Schüler haben in der fünften und sechsten Klasse zwei zusätzliche Stunden Sportunterricht in den folgenden vier Bereichen:"),
        Paragraph(
            "Zielschussspiele (Hockey), Rückschlagspiele (Tennis), Kompositorische Sportarten (Hier können - neben den traditionellen Sportarten Turnen oder Tanzen - aktuelle Trends der Bewegungs-, Spiel und Sportkultur wie bspw. Parkour & Freerunning aufgegriffen werden), Metrische Sportarten (Leichtathletik oder Schwimmen)."),
        ArticleImage("19"),
        Paragraph(
            "Der Schwerpunkt Sport wird von qualifizierten Trainern und von Sportlehrkräften der Schule am Ried durchgeführt. Der Tennis-Unterricht findet auf der Anlage des TC Enkheim statt."),
        Paragraph(
            "Die Schwerpunktgruppe Sport versteht sich nicht als Sportförderunterricht zur Kompensation von Bewegungsmangel oder motorischen Defiziten. Die Kinder sollten gerne Sport treiben und bewegungsfreudig sein."),
        Paragraph(
            "Dieses Angebot kann die Schule leider nicht kostenlos, aber dennoch preisgünstig für monatlich ca. 15,00 € anbieten. Weitere Zusatzkosten fallen nicht an, Hockey- und Tennisschläger werden durch die Schule am Ried gestellt."),
        ArticleImage("20"),
        Headline2("Weitere Angebote"),
        Paragraph(
            "Zur Umsetzung zahlreicher schulsportlicher Veranstaltungen steht der Schule am Ried ein optimales Sportstätten- Angebot zur Verfügung: Zwei Großturnhallen, Tennisanlage, Riedstadion mit Rasenplatz, Kunstrasenplatz und Soccer-Courts, Riedbad in unmittelbarer Nähe mit Hallenbad und Freibad inklusive Beachvolleyballanlage."),
        Paragraph(
            "Der Regelsportunterricht findet an der Schule am Ried bis zur E-Phase im Klassenverband statt. Dank des optimalen Sportstätten-Angebotes kann die ganze Breite der im Kerncurriculum vorgesehenen Bewegungsfelder abgedeckt werden."),
        Paragraph("Die Kooperation mit Sportvereinen bereichert den Schulsport durch Arbeitsgemeinschaften in unterschiedlichen Sportarten."),
        Paragraph(
            "Neben den traditionellen Sportarten wie Leichtathletik, Turnen, Schwimmen, Tanzen und den großen Sportspielen (Fußball, Handball, Basketball, Volleyball) werden viele weitere Bewegungsformen und Trendsportarten im Sportunterricht angeboten; z. B. Le Parkour, Partner- und Gruppenakrobatik, Breakdance, Hip-Hop, Rope-Skipping, Flagfootball, Tchoukball."),
        ArticleImage("21"),
        Headline2("Skifahrt"),
        Paragraph(
            "Alpine Wintersportarten und das damit verbundene pädagogische Rahmenprogramm sind besonders geeignet, neben motorischen Lernzielen, weitere pädagogisch wünschenswerte Kompetenzen und Erfahrungen zu fördern."),
        Paragraph(
            "Seit dem Schuljahr 2010/11 wird in der Jahrgangsstufe 8 eine Skifahrt durchgeführt, die für die Schülerinnen und Schüler ein Highlight in ihrer Schulkarriere darstellt. Die Skifahrt wird als freiwillige, klassen- und schulzweigübergreifende Fahrt angeboten."),
        ArticleImage("22"),
        Headline2("AG-Angebot"),
        Paragraph(
            "In Ergänzung zum Regelsportunterricht können die Schülerinnen und Schüler an zahlreichen AG-Angeboten aus dem Bereich des Sports teilnehmen."),
        Headline2("Sportevents"),
        Paragraph(
            "Neben den Bundesjugendspielen Leichtathletik oder Turnen, die fester Bestandteil des Schuljahresplanes sind, wird alljährlich der Riedlauf durchgeführt, an dem alle Schülerinnen und Schüler teilnehmen. Dabei wird ein vorgegebener Rundkurs im benachbarten Ried durchlaufen. Die besten Läufer/ innen jedes Jahrgangs werden besonders ausgezeichnet und die beste Klasse jedes Jahrgangs erhält einen Wanderpokal."),
        Paragraph(
            "Bei Jugend trainiert für Olympia stellt die Schule am Ried regelmäßig Mannschaften in unterschiedlichen Sportarten. So ist die Schule am Ried seit Jahren eine der erfolgreichsten Frankfurter Schulen bei z.B. den Fußball- und Leichtathletik-Wettbewerben."),
        Paragraph(""),
        Paragraph("Weitere Informationen auf der Schulwebsite:"),
        Link("http://www.schule-am-ried.de/schwerpunkte-profil/schwerpunkt-sport/"),
      ],
    );
  }
}