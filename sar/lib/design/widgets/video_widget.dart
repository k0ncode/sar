import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:transparent_image/transparent_image.dart';

class Video extends StatelessWidget {
  final String youtubeUrl;
  Video(this.youtubeUrl);

  @override
  Widget build(BuildContext context) {
    String id = youtubeUrl.substring(youtubeUrl.length - 11);
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: GestureDetector(
        child: Stack(
          alignment: Alignment.center,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: FadeInImage(
                image: NetworkImage("https://img.youtube.com/vi/" + id + "/hqdefault.jpg"),
                placeholder: MemoryImage(kTransparentImage),
                fit: BoxFit.fitWidth,
                fadeInDuration: Duration(milliseconds: 100),
              ),
            ),
            Icon(Icons.play_circle_fill, color: Colors.grey[200], size: 75),
          ],
        ),
        onTap: () async {
          if (await canLaunch(youtubeUrl)) {
            await launch(youtubeUrl);
          } else {
            print(youtubeUrl + "Kann nicht geöffnet werden");
          }
        },
      ),
    );
  }
}
