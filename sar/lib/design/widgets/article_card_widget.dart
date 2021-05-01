import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:sar/design/theme.dart';

// TODO: Abstand zwischen Widgets verkleinern, Oben und unten ein bisschen Platz hinzufügen

class ArticleCard extends StatelessWidget {
  final String title; // Überschrift der Card
  final String text; // Text der Card
  final String imageIndex; // Bild der Card (optinal)
  final Widget article; // Seite zu der der "Weiterlesen"-Button führen soll
  const ArticleCard({this.title = "Titel", this.text = "Text...", this.imageIndex = "", required this.article});

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
                  "assets/image" + imageIndex + ".jpg",
                  width: 112,
                  height: 112,
                  fit: BoxFit.cover,
                ),
              Expanded(
                child: ListTile(
                  title: Text(title),
                  subtitle: Text(
                    text,
                    overflow: TextOverflow.ellipsis,
                    maxLines: (imageIndex.isNotEmpty) ? 3 : 1,
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
        openBuilder: (context, openPage()) => article,
      ),
      padding: const EdgeInsets.only(bottom: 16),
    );
  }
}


// class ArticleCard extends StatelessWidget {
//   final String title; // Überschrift der Card
//   final String text; // Text der Card
//   final String imageIndex; // Bild der Card (optinal)
//   final Widget article; // Seite zu der der "Weiterlesen"-Button führen soll
//   const ArticleCard({this.title = "Titel", this.text = "Text...", this.imageIndex = "", required this.article});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         OpenContainer(
//           closedBuilder: (context, openPage) => InkWell(
//             child: Stack(
//               children: [
//                 Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     SizedBox(height: 8),
//                     ListTile(
//                       title: Text(title),
//                       subtitle: Text(text),
//                       trailing: Icon(Icons.chevron_right, color: sarBlue),
//                     ),
//                     if (imageIndex.isNotEmpty)
//                       Column(children: [
//                         SizedBox(height: 8),
//                         Ink(
//                           height: 225,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               image: AssetImage("assets/image" + imageIndex + ".jpg"),
//                               fit: BoxFit.fitWidth,
//                               alignment: Alignment.bottomCenter,
//                             ),
//                             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8)),
//                           ),
//                         ),
//                       ])
//                     else
//                       SizedBox(height: 8),
//                   ],
//                 ),
//               ],
//             ),
//             onTap: () => openPage(),
//             borderRadius: BorderRadius.circular(8),
//           ),
//           closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//           closedElevation: 2,
//           openBuilder: (context, openPage) => article,
//         ),
//         SizedBox(height: 16),
//       ],
//     );
//   }
// }


