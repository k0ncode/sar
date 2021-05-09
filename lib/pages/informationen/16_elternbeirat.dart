import 'package:flutter/material.dart';
import 'package:sar/design/widgets/text_widgets.dart';

class Elternbeirat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ArticlePage(
      appBarTitle: "Elternbeirat",
      content: [
        Headline1("Schulelternbeirat"),
        Paragraph(
            "Eine gute Schule braucht engagierte Eltern, die sich Ihrer Verantwortung bewusst sind. Im Mittelpunkt aller Bemühungen stehen die Schülerinnen und Schüler. Unser großes gemeinsames Ziel ist es, aktiv an der Schule am Ried mitzuarbeiten. Wir wollen gegenseitigen Respekt und Toleranz vorleben, um für alle Kinder und Jugendlichen ein positives Lernumfeld zu schaffen."),
        Paragraph("Internetseite: http://www.seb-schule-am-ried.de"),
        Paragraph("Vorsitzende: Anja Rickert anjakraft@hotmail.com"),
        Paragraph("Stellvertretende Vorsitzende: Julia Hanauer JuliaHanauer@gmx.de"),
      ],
    );
  }
}
