import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart'; // !!!!
// import 'package:easy_image_viewer/easy_image_viewer.dart';

import '../theme.dart';

class TextPage extends StatelessWidget {
  final String textFile;
  final String appBarTitle;
  const TextPage({super.key, required this.textFile, this.appBarTitle = ""});

  // Funktion, die den Text aus der Datei einliest:
  Future<String> getText(final String textFile) async {
    final String text = await rootBundle.loadString("./assets/texts/$textFile");
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getText(textFile),
      builder: (context, snapshot) => Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
        ),
        body: snapshot.hasData
            ? Scrollbar(
                thickness: 6,
                child: Markdown(
                  data: snapshot.data.toString(), // Text aus der Datei dem Markdown Widget zuweisen
                  selectable: true, // Text auswählbar machen
                  styleSheet: styleSheet(context), // siehe theme.dart
                  // Custom Bilder mit rounded Edges:
                  imageBuilder: (Uri uri, _, __) {
                    return Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: InkWell(
                            child: Hero(
                              tag: "image",
                              child: Image.asset("assets/images/$uri.jpg"),
                            ),
                            onTap: () => debugPrint(
                                "image clicked") // showImageViewer(context, AssetImage("assets/images/$uri.jpg"), swipeDismissible: true, doubleTapZoomable: true),
                            ),
                      ),
                    );
                  },
                  // Funktion, die aufgerufen wird, wenn ein Link im Text gedrückt wird:
                  onTapLink: (_, urlString, __) async {
                    final Uri url = Uri.parse(urlString!);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url, mode: LaunchMode.externalApplication);
                    } else {
                      debugPrint("$url kann nicht geöffnet werden");
                    }
                  },
                ),
              )
            // Wenn Text aus Datei eingelesen, dann Markdown Widget zeigen, sonst Ladekreis:
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
