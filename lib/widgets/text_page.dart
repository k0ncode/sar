import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:sar/theme.dart';
import 'package:sar/widgets/page_scrollbar.dart';

class TextPage extends StatelessWidget {
  final String textFile;
  final String appBarTitle;
  const TextPage({Key? key, required this.textFile, this.appBarTitle = ""}) : super(key: key);

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
        appBar: AppBar(title: Text(appBarTitle)),
        backgroundColor: Colors.white,
        body: snapshot.hasData
            ? PageScrollbar(
                child: Markdown(
                  data: snapshot.data.toString(), // Text aus der Datei dem Markdown Widget zuweisen
                  selectable: true, // Text auswählbar machen
                  physics: const BouncingScrollPhysics(),
                  // TextStyles anpassen:
                  styleSheet: MarkdownStyleSheet(
                    p: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16),
                    blockSpacing: 12,
                    listBulletPadding: const EdgeInsets.all(0),
                    a: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16, color: sarBlue, decoration: TextDecoration.underline),
                  ),
                  // Custom Bilder mit rounded Edges:
                  imageBuilder: (Uri uri, _, __) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset("assets/images/$uri.jpg"),
                    );
                  },
                  // Funktion, die aufgerufen wird, wenn ein Link im Text gedrückt wird:
                  onTapLink: (_, url, __) async {
                    if (url != null && await canLaunch(url)) {
                      await launch(url.toString());
                    } else {
                      print("$url kann nicht geöffnet werden");
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
