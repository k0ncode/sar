import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:sar/widgets/text_page.dart';

class InformationCard extends StatelessWidget {
  final String title; // Überschrift der Card
  final String text; // Text der Card
  final String textFile; // Text Datei, aus der der Text stammen soll
  final String? imageIndex; // Bild der Card (optional)
  const InformationCard({super.key, this.title = "Titel", this.text = "Text...", required this.textFile, this.imageIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: OpenContainer(
        closedElevation: 2,
        closedColor: Theme.of(context).colorScheme.surfaceContainer,
        closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        closedBuilder: (context, openPage) => SizedBox(
          width: double.infinity,
          child: InkWell(
            splashFactory: InkSparkle.splashFactory,
            onTap: openPage,
            child: Row(
              children: [
                if (imageIndex != null)
                  Ink(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/image$imageIndex.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: ListTile(
                      title: Text(title, style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold)),
                      subtitle: Text(
                        text,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 14),
                        overflow: TextOverflow.ellipsis,
                        maxLines: imageIndex != null ? 3 : 1,
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: MediaQuery.of(context).platformBrightness == Brightness.light
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSurface,
                ),
                const SizedBox(width: 8),
              ],
            ),
          ),
        ),
        openBuilder: (context, openPage) => TextPage(textFile: "informationen/$textFile", appBarTitle: title),
      ),
    );
  }
}
