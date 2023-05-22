import 'package:flutter/material.dart';
import 'package:portfolio/components/pdf_item.dart';
import 'package:portfolio/sections/page_structure.dart';
import 'package:portfolio/text-components/sub_title.dart';
import 'package:portfolio/text-components/title.dart';
import 'package:provider/provider.dart';

import 'notifier.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedLanguage =
        Provider.of<Notifier>(context, listen: false).selectedLanguage;
    return PageStructure(
      column: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubTitle(text: selectedLanguage == "eng" ? "Resume" : "CV"),
          TitleText(
              title: selectedLanguage == "eng"
                  ? "Check My Resume"
                  : "Titta in mitt CV"),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 3, 0, 20),
            child: Align(
              alignment: Alignment.center,
              child: selectedLanguage == "eng"
                  ? const PDFItem(lang: "ENG")
                  : const PDFItem(lang: "SWE"),
            ),
          ),
        ],
      ),
    );
  }
}
