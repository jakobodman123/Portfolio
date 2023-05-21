import 'package:flutter/material.dart';
import 'package:portfolio/components/pdf_item.dart';
import 'package:portfolio/page_structure.dart';
import 'package:portfolio/text-components/sub_title.dart';
import 'package:portfolio/text-components/title.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageStructure(
      column: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SubTitle(text: "Resume"),
          TitleText(title: "CHECK MY RESUME"),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 3, 0, 20),
            child: Align(
              alignment: Alignment.center,
              child: Wrap(
                alignment: WrapAlignment.center,
                runSpacing: 15,
                spacing: 10,
                children: [
                  PDFItem(lang: "ENG"),
                  PDFItem(lang: "SWE"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
