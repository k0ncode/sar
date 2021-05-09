import 'package:flutter/material.dart';
import 'package:sar/design/widgets/text_widgets.dart';

class Anfahrt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ArticlePage(
      appBarTitle: "Anfahrt",
      content: [
        Headline1("Anfahrt"),
        ArticleImage("30"),
        Headline2("U-Bahn"),
        Paragraph("Mit den Linien U4 oder U7 in Richtung Enkheim bis zur Endhaltestelle der U-Bahn-Station „Enkheim“, danach weiter mit dem Bus."),
        Headline2("Bus"),
        Paragraph(
            "An der U-Bahn-Station Enkheim in den 42er Bus „Bergen Ost (Nordring)“ einsteigen und vier Stationen fahren. An der Haltestelle „Barbarossastraße/Riedschule“ aussteigen. Dann zu Fuß rechts abbiegen in die Barbarossastraße bis zur Schule am Ried."),
        Paragraph(""),
        Paragraph("In Google Maps öffnen:"),
        Link("https://goo.gl/maps/1dqDFwoeRRnQGtCUA"),
      ],
    );
  }
}
