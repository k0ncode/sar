import 'package:flutter/material.dart';
import 'package:sar/design/widgets/article_card_widget.dart';
import 'package:sar/design/widgets/video_widget.dart';
import 'package:sar/routes.dart';

class Informationen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Informationen")),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
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
              ArticleCard(
                title: "Kooperative Gesamtschule",
                text: "Was ist das?",
                article: KooperativeGesamtschule(),
              ),
              ArticleCard(
                title: "Über die Schule am Ried",
                text: "Wir über uns",
                imageIndex: "01",
                article: UeberSar(),
              ),
              ArticleCard(
                title: "Gymnasialzweig (Gynmasium)",
                text: "Der Gymnasialzweig der Schule am Ried",
                article: Gymnasialzweig(),
              ),
              ArticleCard(
                title: "Realschulzweig (Realschule)",
                text: "Der Realschulzweig der Schule am Ried",
                article: Realschulzweig(),
              ),
              ArticleCard(
                title: "Hauptschulzweig (Hauptschule)",
                text: "Der Hauptschulzweig der Schule am Ried",
                article: Hauptschulzweig(),
              ),
              ArticleCard(
                title: "Gymnasiale Oberstufe",
                text: "Die gymnasiale Oberstufe der Schule am Ried",
                article: GymnasialeOberstufe(),
              ),
              ArticleCard(
                title: "Musik",
                text: "Musikalische Angebote an der Schule am Ried",
                imageIndex: "09",
                article: Musik(),
              ),
              ArticleCard(
                title: "Naturwissenschaften und MINT-EC",
                text: "Naturwissenschaftliche Angebote und MINT-EC an der Schule am Ried",
                imageIndex: "13",
                article: NawiUndMint(),
              ),
              ArticleCard(
                title: "Sport",
                text: "Sportliche Angebote an der Schule am Ried",
                imageIndex: "18",
                article: Sport(),
              ),
              ArticleCard(
                title: "Fremdsprachen",
                text: "Fremdsprachen und Austausche an der Schule am Ried",
                article: Fremdsprachen(),
              ),
              ArticleCard(
                title: "Berufsorientierung",
                text: "Berufsorientierung an der Schule am Ried",
                article: Berufsorientierung(),
              ),
              ArticleCard(
                title: "Ganztagsschule",
                text: "Die Schule am Ried als Ganztagsschule",
                imageIndex: "31",
                article: Ganztagsschule(),
              ),
              ArticleCard(
                title: "Jugendhilfe",
                text: "Die Jugendhilfe an der Schule am Ried",
                article: Jugendhilfe(),
              ),
              ArticleCard(
                title: "Schulleitung",
                text: "Die Schulleitung der Schule am Ried",
                article: Schulleitung(),
              ),
              ArticleCard(
                title: "Elternbeirat",
                text: "Der Elternbeirat der Schule am Ried",
                article: Elternbeirat(),
              ),
              ArticleCard(
                title: "Anfahrt",
                text: "Karte und Informationen zur Anfahrt",
                article: Anfahrt(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
