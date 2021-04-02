import 'package:flutter/material.dart';

export 'package:sar/pages/startseite.dart';
export 'package:sar/pages/appinfo.dart';
export 'package:sar/pages/willkommen.dart';
export 'package:sar/pages/informationen/informationen.dart';
export 'package:sar/pages/news.dart';

export 'package:sar/pages/informationen/1_kgs.dart';
export 'package:sar/pages/informationen/2_ueber_sar.dart';
export 'package:sar/pages/informationen/3_gymnasialzweig.dart';
export 'package:sar/pages/informationen/4_realschulzweig.dart';
export 'package:sar/pages/informationen/5_hauptschulzweig.dart';
export 'package:sar/pages/informationen/6_gymnasiale_oberstufe.dart';
export 'package:sar/pages/informationen/7_schwerpunktgruppen.dart';
export 'package:sar/pages/informationen/8_musik.dart';
export 'package:sar/pages/informationen/9_nawi_und_mint.dart';
export 'package:sar/pages/informationen/10_sport.dart';
export 'package:sar/pages/informationen/11_fremdsprachen.dart';
export 'package:sar/pages/informationen/12_berufsorientierung.dart';
export 'package:sar/pages/informationen/13_ganztagsschule.dart';
export 'package:sar/pages/informationen/14_jugendhilfe.dart';
export 'package:sar/pages/informationen/15_schulleitung.dart';
export 'package:sar/pages/informationen/16_elternbeirat.dart';
export 'package:sar/pages/informationen/17_anfahrt.dart';

// Funktion um auf eine andere Seite zu navigieren:
void navigateTo(Widget destinationPage, BuildContext context) {
  final MaterialPageRoute route = MaterialPageRoute(builder: (context) => destinationPage);
  Navigator.push(context, route);
}
