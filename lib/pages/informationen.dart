import 'package:flutter/material.dart';
import 'package:sar/widgets/information_card.dart';
import 'package:sar/widgets/page_scrollbar.dart';
import 'package:sar/widgets/video_launcher.dart';

class Informationen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Informationen")),
      body: PageScrollbar(
        child: ListView(
          padding: const EdgeInsets.all(16),
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Card(
                margin: EdgeInsets.zero,
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 4),
                    ListTile(title: Text("Die Schule am Ried im Video"), subtitle: Text("Wir stellen uns vor")),
                    VideoLauncher("https://youtu.be/ANRX-aR9IM0"),
                  ],
                ),
              ),
            ),
            InformationCard(
              title: "Über die Schule am Ried",
              text: "Wir über uns",
              imageIndex: "01",
              textFile: "1_ueber_sar.txt",
            ),
            InformationCard(
              title: "Kooperative Gesamtschule",
              text: "Was ist das?",
              textFile: "2_kgs.txt",
            ),
            InformationCard(
              title: "Gymnasialzweig (Gynmasium)",
              text: "Der Gymnasialzweig der Schule am Ried",
              textFile: "3_gymnasialzweig.txt",
            ),
            InformationCard(
              title: "Realschulzweig (Realschule)",
              text: "Der Realschulzweig der Schule am Ried",
              textFile: "4_realschulzweig.txt",
            ),
            InformationCard(
              title: "Hauptschulzweig (Hauptschule)",
              text: "Der Hauptschulzweig der Schule am Ried",
              textFile: "5_hauptschulzweig.txt",
            ),
            InformationCard(
              title: "Gymnasiale Oberstufe",
              text: "Die gymnasiale Oberstufe der Schule am Ried",
              textFile: "6_oberstufe.txt",
            ),
            InformationCard(
              title: "Schwerpunktgruppen",
              text: "Informationen zu den Schwerpunktgruppen",
              textFile: "7_schwerpunktgruppen.txt",
            ),
            InformationCard(
              title: "Musik",
              text: "Musikalische Angebote an der Schule am Ried",
              imageIndex: "09",
              textFile: "8_musik.txt",
            ),
            InformationCard(
              title: "NaWi und MINT-EC",
              text: "Naturwissenschaftliche Angebote und MINT-EC an der Schule am Ried",
              imageIndex: "13",
              textFile: "9_nawi_und_mint.txt",
            ),
            InformationCard(
              title: "Sport",
              text: "Sportliche Angebote an der Schule am Ried",
              imageIndex: "18",
              textFile: "10_sport.txt",
            ),
            InformationCard(
              title: "Fremdsprachen",
              text: "Fremdsprachen und Austauschprogramme",
              textFile: "11_fremdsprachen.txt",
            ),
            InformationCard(
              title: "Berufsorientierung",
              text: "Berufsorientierung und Zukunftsaussichten",
              textFile: "12_berufsorientierung.txt",
            ),
            InformationCard(
              title: "Ganztagsschule",
              text: "Die Schule am Ried als Ganztagsschule",
              imageIndex: "31",
              textFile: "13_ganztagsschule.txt",
            ),
            InformationCard(
              title: "Jugendhilfe",
              text: "Die schuleigene Jugenhilfe",
              textFile: "14_jugendhilfe.txt",
            ),
            InformationCard(
              title: "Schulleitung",
              text: "Schulleitung, Sekreteriat und Hausverwaltung",
              textFile: "15_schulleitung.txt",
            ),
            InformationCard(
              title: "Elternbeirat",
              text: "Der Schulelternbeirat",
              textFile: "16_elternbeirat.txt",
            ),
            InformationCard(
              title: "Anfahrt",
              text: "Karte und Informationen zur Anfahrt",
              textFile: "17_anfahrt.txt",
            ),
          ],
        ),
      ),
    );
  }
}
