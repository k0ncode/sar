import 'package:flutter/material.dart';
import 'package:sar/design/theme.dart';
import 'package:url_launcher/url_launcher.dart';

// TextStyles:
TextStyle? headline1TextStyle(context) => Theme.of(context).textTheme.headline5;
TextStyle? headline2TextStyle(context) => Theme.of(context).textTheme.headline6;
TextStyle bodyTextStyle(context) =>
    Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16);
TextStyle linkTextStyle(context) =>
    Theme.of(context).textTheme.bodyText2!.copyWith(
        fontSize: 16, color: sarBlue, decoration: TextDecoration.underline);

// Widget für Artikelseiten (Scaffold):
class ArticlePage extends StatelessWidget {
  final String appBarTitle; // Text in der AppBar
  final List<Widget>
      content; // Inhalt des Textes als Liste aus Widgets z.B. Paragraphs
  const ArticlePage({required this.appBarTitle, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appBarTitle)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: content,
          ),
        ],
      ),
    );
  }
}

// Widget für Hauptüberschriften im Text (H1):
class Headline1 extends StatelessWidget {
  final String headline;
  Headline1(this.headline);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12),
        SelectableText(headline, style: headline1TextStyle(context)),
        SizedBox(height: 12),
      ],
    );
  }
}

// Widget für Unterüberschriften im Text (H2):
class Headline2 extends StatelessWidget {
  final String headline;
  Headline2(this.headline);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        SelectableText(headline, style: headline2TextStyle(context)),
        SizedBox(height: 10),
      ],
    );
  }
}

// Widget für Paragraphen:
class Paragraph extends StatelessWidget {
  final String text;
  Paragraph(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(text, style: bodyTextStyle(context)),
        SizedBox(height: 8),
      ],
    );
  }
}

// Widget für Stichpunkte im Text:
class BulletPoint extends StatelessWidget {
  final String text;
  final bool isLast;
  BulletPoint(this.text, {this.isLast = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText("•  ", style: bodyTextStyle(context)),
            Flexible(
                child: SelectableText(text, style: bodyTextStyle(context))),
          ],
        ),
        isLast ? SizedBox(height: 8) : SizedBox()
      ],
    );
  }
}

// Widget für Bilder im Text:
class ArticleImage extends StatelessWidget {
  final String imageNumber;
  ArticleImage(this.imageNumber);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          child: Image.asset("assets/image" + imageNumber + ".jpg",
              fit: BoxFit.fitWidth),
          borderRadius: BorderRadius.circular(8),
        ),
        SizedBox(height: 8),
      ],
    );
  }
}

// Widget für Hyperlinks:
class Link extends StatelessWidget {
  final String url;
  Link(this.url);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Text(
            url,
            style: linkTextStyle(context),
          ),
          SizedBox(height: 8),
        ],
      ),
      onTap: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          print(url + " kann nicht geöffnet werden");
        }
      },
    );
  }
}
