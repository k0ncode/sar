import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class VideoLauncher extends StatelessWidget {
  final String youtubeUrl;
  VideoLauncher(this.youtubeUrl);

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
              child: CachedNetworkImage(
                imageUrl: "https://img.youtube.com/vi/" + id + "/hqdefault.jpg",
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
