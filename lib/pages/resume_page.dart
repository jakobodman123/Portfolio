import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/pdf_item.dart';
import 'package:portfolio/text-components/post_title.dart';
import 'package:portfolio/text-components/sub_title.dart';
import 'package:portfolio/text-components/title.dart';

import '../components/custom_appbar.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: CustomAppbar().customAppbar(context),
        body: Container(
          width: screenWidth,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/starbackground.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 1000,
                  child: Card(
                    color: Colors.black.withOpacity(0.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SubTitle(text: "Resume"),
                        const TitleText(title: "CHECK MY RESUME"),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 3, 0, 20),
                          child: Align(
                            alignment: Alignment.center,
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              runSpacing: 15,
                              spacing: 10,
                              children: const [
                                PDFItem(lang: "ENG"),
                                PDFItem(lang: "SWE"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
