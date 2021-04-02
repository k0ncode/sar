import 'package:flutter/material.dart';
import 'package:sar/design/widgets/text_widgets.dart';

class Berufsorientierung extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ArticlePage(
      appBarTitle: "Berufsorientierung",
      content: [
        Headline1("Berufsorientierung an der Schule am Ried"),
        Headline2("Unsere Leitvorstellung"),
        Paragraph(
            "Wir setzen unser Leitbild „Miteinander Werte achten und mit Freude lernen“ auch für den Bereich der Beruflichen Orientierung (BO) um. Unsere Schüler und Schülerinnen werden lebensnah und praxisorientiert auf Ausbildung, Studium und Berufe vorbereitet."),
        Paragraph(
            "Wir setzen unser Leitbild „Miteinander Werte achten und mit Freude lernen“ auch für den Bereich der Beruflichen Orientierung (BO) um. Unsere Schüler und Schülerinnen werden lebensnah und praxisorientiert auf Ausbildung, Studium und Berufe vorbereitet."),
        Headline2("Ziele der BO an unserer Schule"),
        Paragraph(
            "Wir fangen frühzeitig mit der Beruflichen Orientierung unserer Schülerinnen und Schüler an. BO ist ein durchgängiger und begleiteter Prozess, der in Jahrgangsstufe 7 startet, obschon die ersten Lernerfahrungen dazu bereits früher durch zukunftsweisendes Arbeiten in der HPI Schul-Cloud und durch das Fach Medienkunde (in Jahrgangsstufe 6) angestoßen worden sind."),
        Paragraph(
            "Wir schaffen ab der 7. Jahrgangsstufe unterschiedliche berufsorientierte Bausteine, in denen unsere Lernenden die erforderlichen Kompetenzen, Fähigkeiten und das berufsspezifisches Wissen für die jeweils anvisierten Berufsbilder und das Arbeitsleben erwerben. Dies gilt für alle Schulzweige."),
        Paragraph(
            "Unsere Schülerinnen und Schüler erhalten Rückmeldungen im Rahmen von Kompetenzanalysen und reflektieren - auf den eigenen Berufswunsch bezogen - ihre individuellen Kompetenzen und Interessen. Wir tragen damit den Anforderungen einer sich technologisch schnell verändernden Arbeitswelt Rechnung."),
        Paragraph(
            "In der gymnasialen Oberstufe legen wir ein besonderes Augenmerk auf die Studien- und Berufsmöglichkeiten im MINT-Bereich. Wir arbeiten eng mit potenziellen Arbeitgebern der Region, umliegenden Hochschulen und der Agentur für Arbeit zusammen und binden Alumni und Eltern in den Prozess der Beruflichen Orientierung mit ein."),
        Headline2("Fächerübergreifendes BO-Curriculum"),
        Paragraph(
            "Die Schule am Ried besitzt ein fächerübergreifendes Curriculum für die Berufliche Orientierung, das alle Maßnahmen und Angebote bündelt sowie Termine benennt und Verantwortlichkeiten klärt. Beratungen bei der Bundesagentur für Arbeit (im BiZ und regelmäßig an der Schule), Praktika in Betrieben und Projekten sowie Besuche von orientierenden Veranstaltungen zur Berufs- und auch Studienorientierung bilden die Säulen unseres Konzeptes."),
        Headline2("Betriebspraktikum in England/ Birmingham"),
        Paragraph(
            "Jedes Jahr fährt eine Gruppe von Schülerinnen und Schülern der Schule am Ried in die Partnerstadt von Frankfurt nach Birmingham und absolviert in unterschiedlichen Betrieben (z.B. Grundschulen, Kindergärten, Büros etc.) ein zweiwöchiges Betriebspraktikum. Dieses Programm findet seit Jahren auf Austauschbasis oder als „Paying Guest“ (zu Gast bei Familien) statt. Die Schülerinnen und Schüler betreut von Lehrern fliegen im Januar/ Februar jeden Jahres für ca. 2,5 Wochen nach England, um dort in Betrieben Erfahrungen in der Arbeitswelt zu sammeln. Neben den umfänglichen Eindrücken, die in den verschiedenen Betrieben gesammelt werden, kann so der englische Arbeitsalltag hautnah erleben werden. Die Schülerinnen und Schüler gewinnen so interkulturelle Kompetenz und verbessern Ihre Sprachkenntnisse ganz nebenbei. Die Betriebe werden teilweise von unserer Partnerschule King Edwards Camp Hill Boys School und Frau Konietzny organisiert. Der Gegenbesuch in Frankfurt findet vor oder nach den Sommerferien statt und richtet sich nach den Zeitfenstern der engl. Austauschschule. Abgerundet wird dieses Betriebspraktikum mit Aktivitäten wie einem Tagesausflug nach London und Stratford Upon Avon, Bowling und einem Kinobesuch. Die Jugendlichen werden von zwei Lehrkräften zu Beginn des Aufenthaltes betreut, wobei eine Lehrkraft den kompletten Zeitraum vor Ort in Birmingham bleibt und die Schülerinnen und Schüler bei Ihren Arbeitsplätzen besucht und als Ansprechpartnerin dient. Nach der Rückkehr fertigen die Teilnehmer/innen Praktikumsberichte über ihre Erlebnisse und Erfahrungen an."),
        ArticleImage("23"),
        Paragraph(""),
        Paragraph("Weitere Informationen auf der Schulwebsite:"),
        Link("http://www.schule-am-ried.de/schule/berufsorientierung-an-der-schule-am-ried/"),
      ],
    );
  }
}
