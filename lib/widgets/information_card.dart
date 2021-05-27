import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:sar/theme.dart';
import 'package:sar/widgets/text_page.dart';

class InformationCard extends StatelessWidget {
  final String title; // Überschrift der Card
  final String text; // Text der Card
  final String imageIndex; // Bild der Card (optinal)
  final String textFile; // Text Datei, aus der der Text stammen soll
  const InformationCard({this.title = "Titel", this.text = "Text...", this.imageIndex = "", required this.textFile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: OpenContainer(
        closedBuilder: (context, openPage()) => Container(
          width: double.infinity,
          child: Row(
            children: [
              if (imageIndex.isNotEmpty)
                Image.asset(
                  "assets/images/image" + imageIndex + ".jpg",
                  width: 112,
                  height: 112,
                  fit: BoxFit.cover,
                ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: ListTile(
                    title: Text(title),
                    subtitle: Text(
                      text,
                      overflow: TextOverflow.ellipsis,
                      maxLines: (imageIndex.isNotEmpty) ? 3 : 1,
                    ),
                  ),
                ),
              ),
              Icon(Icons.keyboard_arrow_right, color: sarBlue),
              SizedBox(width: 8),
            ],
          ),
        ),
        closedElevation: 2,
        closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        openBuilder: (context, openPage()) => TextPage(textFile: "informationen/" + textFile, appBarTitle: title),
      ),
      padding: const EdgeInsets.only(bottom: 12),
    );
  }
}
