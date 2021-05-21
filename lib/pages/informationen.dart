import 'package:flutter/material.dart';
import 'package:sar/design/widgets/information_card_widget.dart';
import 'package:sar/design/widgets/text_page.dart';
import 'package:sar/design/widgets/video_widget.dart';

class Informationen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Informationen")),
      body: RawScrollbar(
        thickness: 6,
        thumbColor: Colors.black.withOpacity(0.2),
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
                    ListTile(title: Text("SaR im Video"), subtitle: Text("Wir stellen uns vor")),
                    Video("https://youtu.be/ANRX-aR9IM0"),
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
              text: "Schwerpunktgruppen an der Schule am Ried",
              textFile: "7_schwerpunktgruppen.txt",
            ),
            InformationCard(
              title: "Musik",
              text: "Musikalische Angebote an der Schule am Ried",
              imageIndex: "09",
              textFile: "8_musik.txt",
            ),
            InformationCard(
              title: "Naturwissenschaften und MINT-EC",
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
              text: "Fremdsprachen und Austausche an der Schule am Ried",
              textFile: "11_fremdsprachen.txt",
            ),
            InformationCard(
              title: "Berufsorientierung",
              text: "Berufsorientierung an der Schule am Ried",
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
              text: "Die Jugendhilfe an der Schule am Ried",
              textFile: "14_jugendhilfe.txt",
            ),
            InformationCard(
              title: "Schulleitung",
              text: "Die Schulleitung der Schule am Ried",
              textFile: "15_schulleitung.txt",
            ),
            InformationCard(
              title: "Elternbeirat",
              text: "Der Elternbeirat der Schule am Ried",
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
