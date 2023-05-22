import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/text-components/post_title.dart';
import 'package:flutter/services.dart';
import 'dart:html' as html;
import 'package:flutter/services.dart' show rootBundle;
import 'package:provider/provider.dart';
import 'dart:convert';

import '../pages/notifier.dart';

class PDFItem extends StatelessWidget {
  final String lang;

  const PDFItem({super.key, required this.lang});

  Future<void> downloadPDF(BuildContext context, String url) async {
    final bytes = await rootBundle.load(url);

    final anchorElement = html.AnchorElement(
      href:
          'data:application/pdf;base64,${base64Encode(bytes.buffer.asUint8List())}',
    );
    anchorElement.download = url;
    anchorElement.click();
  }

  @override
  Widget build(BuildContext context) {
    final selectedLanguage =
        Provider.of<Notifier>(context, listen: false).selectedLanguage;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            downloadPDF(context, "assets/Jakob_CV_$lang.pdf");
          },
          child: SizedBox(
            width: 290,
            child: Row(
              children: [
                PostTitle(
                  text: selectedLanguage == "eng"
                      ? "Click here to download"
                      : "Klicka här för att ladda ner",
                  bold: false,
                ),
                const FaIcon(
                  FontAwesomeIcons.fileArrowDown,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 400,
          height: 700,
          child: Card(
            elevation: 10,
            child: Image.asset(
              "assets/CV_PIC_$lang.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
