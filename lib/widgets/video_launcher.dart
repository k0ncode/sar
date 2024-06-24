import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class VideoLauncher extends StatelessWidget {
  final String youtubeUrlString;
  const VideoLauncher({super.key, required this.youtubeUrlString});

  @override
  Widget build(BuildContext context) {
    final String id = youtubeUrlString.substring(youtubeUrlString.length - 11);
    final Uri youtubeUrl = Uri.parse(youtubeUrlString);
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GestureDetector(
        onTap: () async {
          if (await canLaunchUrl(youtubeUrl)) {
            await launchUrl(youtubeUrl, mode: LaunchMode.externalNonBrowserApplication);
          } else {
            print("${youtubeUrlString}Kann nicht geöffnet werden");
          }
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: CachedNetworkImage(
                imageUrl: "https://img.youtube.com/vi/$id/hqdefault.jpg",
                fit: BoxFit.fitWidth,
                fadeInDuration: const Duration(milliseconds: 100),
              ),
            ),
            Icon(Icons.play_circle_fill, color: Colors.grey[200], size: 75),
          ],
        ),
      ),
    );
  }
}
