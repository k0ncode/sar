import 'package:flutter/material.dart';
import 'package:sar/design/theme.dart';
import 'package:sar/routes.dart';

class ArticleCard extends StatelessWidget {
  final String title; // Überschrift der Card
  final String text; // Text der Card
  final String imageIndex; // Bild der Card (optinal)
  final Widget article; // Seite zu der der "Weiterlesen"-Button führen soll
  const ArticleCard({this.title = "Titel", this.text = "Text...", this.imageIndex = "", required this.article});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: InkWell(
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 8),
                    ListTile(
                      title: Text(title),
                      subtitle: Text(text),
                      trailing: Icon(Icons.chevron_right, color: sarBlue),
                    ),
                    if (imageIndex.isNotEmpty)
                      Column(children: [
                        SizedBox(height: 8),
                        Ink(
                          height: 225,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/image" + imageIndex + ".jpg"),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
                          ),
                        ),
                      ])
                    else
                      SizedBox(height: 8),
                  ],
                ),
              ],
            ),
            onTap: () => navigateTo(article, context),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        SizedBox(height: 4),
      ],
    );
  }
}
