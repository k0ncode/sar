import 'package:flutter/material.dart';
import 'package:sar/widgets/information_card.dart';
import 'package:sar/widgets/page_scrollbar.dart';
import 'package:sar/widgets/video_launcher.dart';

class Informationen extends StatelessWidget {
  const Informationen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Informationen")),
      body: PageScrollbar(
        child: ListView(
          padding: const EdgeInsets.all(16),
          // physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Card(
                margin: EdgeInsets.zero,
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 4),
                    ListTile(
                        title: Text(
                          "Die SaR im Video - Wir stellen uns vor",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "(zu sehen: der ehemalige Schulleiter, Christof Gans)",
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
                        )),
                    const VideoLauncher(youtubeUrlString: "https://youtu.be/ANRX-aR9IM0"),
                  ],
                ),
              ),
            ),
            const InformationCard(
              title: "Über die Schule am Ried",
              text: "Wir über uns",
              imageIndex: "01",
              textFile: "1_ueber_sar.txt",
            ),
            const InformationCard(
              title: "Kooperative Gesamtschule",
              text: "Was ist das?",
              textFile: "2_kgs.txt",
            ),
            const InformationCard(
              title: "Der Gymnasialzweig",
              text: "Die Schule am Ried als Gymnasium",
              textFile: "3_gymnasialzweig.txt",
            ),
            const InformationCard(
              title: "Der Realschulzweig",
              text: "Die Schule am Ried als Realschule",
              textFile: "4_realschulzweig.txt",
            ),
            const InformationCard(
              title: "Der Hauptschulzweig",
              text: "Die Schule am Ried als Hauptschule",
              textFile: "5_hauptschulzweig.txt",
            ),
            const InformationCard(
              title: "Die Gymnasiale Oberstufe",
              text: "Die Oberstufenzeit an der Schule am Ried",
              textFile: "6_oberstufe.txt",
            ),
            const InformationCard(
              title: "Schwerpunktgruppen",
              text: "Informationen zu den Schwerpunktgruppen",
              textFile: "7_schwerpunktgruppen.txt",
            ),
            const InformationCard(
              title: "Musik",
              text: "Musikalische Angebote",
              imageIndex: "09",
              textFile: "8_musik.txt",
            ),
            const InformationCard(
              title: "NaWi und MINT-EC",
              text: "Naturwissenschaftliche Angebote und MINT-EC",
              imageIndex: "13",
              textFile: "9_nawi_und_mint.txt",
            ),
            const InformationCard(
              title: "Sport",
              text: "Sportliche Angebote",
              imageIndex: "18",
              textFile: "10_sport.txt",
            ),
            const InformationCard(
              title: "Fremdsprachen",
              text: "Fremdsprachen und Austauschprogramme",
              textFile: "11_fremdsprachen.txt",
            ),
            const InformationCard(
              title: "Berufsorientierung",
              text: "Berufsorientierung und Zukunftsaussichten",
              textFile: "12_berufsorientierung.txt",
            ),
            const InformationCard(
              title: "Ganztagsschule",
              text: "Die Schule am Ried als Ganztagsschule",
              imageIndex: "31",
              textFile: "13_ganztagsschule.txt",
            ),
            const InformationCard(
              title: "Jugendhilfe",
              text: "Die schuleigene Jugenhilfe",
              textFile: "14_jugendhilfe.txt",
            ),
            const InformationCard(
              title: "Schulleitung",
              text: "Schulleitung, Sekreteriat und Hausverwaltung",
              textFile: "15_schulleitung.txt",
            ),
            const InformationCard(
              title: "Der Schulelternbeirat",
              text: "(SEB)",
              textFile: "16_elternbeirat.txt",
            ),
            const InformationCard(
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
