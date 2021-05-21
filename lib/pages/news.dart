import 'package:flutter/material.dart';
import 'package:sar/design/widgets/text_page.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextPage("news.txt");
  }
}

// class News extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ArticlePage(
//       appBarTitle: "News",
//       content: [
//         Headline1("News und Aktuelles"),
//         Paragraph("Jedes Jahr gibt es neue Konzepte, Pläne und Entwicklungen, über die wir Sie auf dieser Seite exemplarisch informieren wollen."),
//         Headline2("Neubau"),
//         Paragraph(
//             "Die Schule am Ried wird sich in den nächsten 2 Jahren baulich verändern. An der Stelle, an der sich derzeit noch die beiden Oberstufengebäude befinden, wird in Kürze ein Neu- und Erweiterungsbau entstehen, der höchsten architektonischen und künstlerischen Ansprüchen gerecht werden wird. Im ersten Stock werden sich 16 modern eingerichtete Klassenräume befinden, während das Erdgeschoss Platz für eine geräumige Cafeteria und Mensa bieten wird."),
//         ArticleImage("33"),
//         Paragraph(
//             "Ebenfalls im Erdgeschoss befinden sich Räume der Jugendhilfe und die neue Aula. Unter einer gerundeten Glaskuppel werden in Zukunft Konzerte und andere Veranstaltungen möglich sein. Die technische und akustische Ausstattung der Aula entspricht dabei derjenigen kultureller Einrichtungen. Während der Bauzeit wird die Oberstufe, die Cafeteria und die Jugendhilfe in einem provisorischen Schulgebäude auf der Ost-Wiese untergebracht sein."),
//         ArticleImage("28"),
//         Headline2("Schule ohne Rassismus"),
//         Paragraph(
//             "Im Jahr 2020 haben wir das Zertifikat „Schule ohne Rassismus – Schule mit Courage“ erhalten. Dies war möglich, weil auf Initiative unserer Schülervertretung der überwältigende Teil unserer Schülerschaft und des Kollegiums eine Erklärung unterzeichnet hat, mit welcher wir uns auf der Basis einer couragierten Haltung zu schulischen Projekten gegen Diskriminierung verpflichten."),
//         Headline2("Digitalisierung & Schul-Cloud"),
//         Paragraph(
//             "Die Schule am Ried ist durch die Mitgliedschaft bei MINT-EC Pilotschule bei der Nutzung der HPI-Schul-Cloud. Die Schul-Cloud verspricht eine innovative und sichere IT-Infrastruktur in der Schule, trägt zu einem zeitgemäßen Unterricht bei und schont im Rahmen dessen Ressourcen und Budgets. Dies bedeutete, dass wir beim Lockdown im Frühjahr 2020 innerhalb von Tagen auf digitalen Unterricht mit der Schul-Cloud umstellen konnten und unsere Schüler/innen beim Homeschooling bestmöglich versorgt waren. Aber auch die IT-Ausstattung der Schule am Ried verbessert sich zügig. Nach der kompletten Neuausstattung vor zwei Jahren mit Computerräumen und PC in allen Klassenräumen sind mittlerweile alle Unterrichtsräume mit Beamern ausgestattet und verfügen über eine Breitband (Gigabit) Internet-Anbindung. Mit Mitteln des Digitalpakts wird die Präsentationstechnik in kürze weiter verbessert werden. Ehe in rund zwei Jahren die Schule auch mit dem städtischen WLAN ausgestattet werden wird, konnten wir mit Hilfe des Fördervereins bereits jetzt ein schuleigenes WLAN installieren und auch beispielsweise iPads anschaffen. "),
//         ArticleImage("29"),
//       ],
//     );
//   }
// }
