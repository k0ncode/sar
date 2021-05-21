import 'package:flutter/material.dart';
import 'package:sar/main.dart';
import 'package:sar/design/theme.dart';
import 'navigate_to_function.dart';
import 'package:sar/design/widgets/text_page.dart';

class AppInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Info")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            ClipRRect(
              child: Image.asset("assets/images/icon.png", width: 120),
              borderRadius: BorderRadius.circular(24),
            ),
            SizedBox(height: 24),
            Text("SaR Virtuelle Schulbroschüre"),
            Text("Version " + version),
            SizedBox(height: 16),
            TextButton(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Impressum"),
                  SizedBox(width: 4),
                  Icon(Icons.launch),
                ],
              ),
              onPressed: () => navigateTo(TextPage("impressum.txt"), context),
              style: TextButton.styleFrom(primary: sarBlue),
            ),
            Spacer(),
            Text("made by Konrad Strenge"),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

// class Impressum extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return TextPage("impressum.txt");
//   }
// }

// class Impressum extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Impressum")),
//       body: SingleChildScrollView(
//         physics: BouncingScrollPhysics(),
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: SelectableText(
//             """
// Verantwortlich für Google App:

// Schule am Ried
// Barbarossastr. 65
// 60388 Frankfurt a. M.

// Schulleiter:
// Christof Gans

// Kontakt:
// E-Mail: poststelle.Schule-am-Ried@stadt-frankfurt.de
// E-Mail: info@schule-am-ried.org
// Telefon: 069 – 212 41256

// Schulnummer: 6055

// Schulträger:
// Staatliches Schulamt der Stadt Frankfurt am Main
// Stuttgarter Straße 18-24
// 60329 Frankfurt am Main
// Telefon: 069 – 389 89 01
// e-Mail: poststelle@f.ssa.hessen.de

// Inhaltlich Verantwortlicher gemäß § 10 Absatz 3 MDStV:
// Oliver Sust

// Mit dem Urteil vom 12. Mai 1998 – 312 O 85/98 – „Haftung für Links“ hat das Landgericht Hamburg entschieden, dass man durch die Anbringung eines Links die Inhalte der gelinkten Seite ggf. mit zu verantworten hat. Dies kann nur dadurch verhindert werden, dass man sich ausdrücklich von diesen Inhalten distanziert.

// „Trotz sorgfältiger inhaltlicher Kontrolle übernehmen wir keine Haftung für die Inhalte externer Links.
// Für den Inhalt der verlinkten Seiten sind ausschließlich deren Betreiber verantwortlich.“
// """,
//             style: bodyTextStyle(context),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ),
//     );
//   }
// }
