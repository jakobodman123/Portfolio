import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/sections/page_structure.dart';
import 'package:portfolio/sections/interests.dart';
import 'package:portfolio/text-components/content_text.dart';
import 'package:portfolio/sections/info_pins.dart';
import 'package:portfolio/text-components/post_title.dart';
import 'package:portfolio/text-components/sub_title.dart';
import 'package:portfolio/text-components/title.dart';
import 'package:provider/provider.dart';
import '../sections/feats.dart';
import '../sections/skills.dart';
import 'notifier.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedLanguage =
        Provider.of<Notifier>(context, listen: false).selectedLanguage;
    return PageStructure(
      column: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SubTitle(text: "About"),
          TitleText(
              title: selectedLanguage == "eng" ? "Who Am I?" : "Vem är jag?"),
          PostTitle(
              text: selectedLanguage == "eng"
                  ? "Full-Stack Developer / Computer Science Bachelor / Information Security Expert"
                  : "Full-Stack utvecklare / Kandidat Data-systemvetenskap / Informationsäkerhetsexpert"),
          ContentText(
              text: selectedLanguage == "eng" ? descTextEng : descTextSwe),
          const InfoPins(),
          const SizedBox(
            height: 50,
          ),
          const Feats(),
          const SubTitle(text: "Skills"),
          ContentText(
              text: selectedLanguage == "eng"
                  ? "Below are an estimated rating of some of my current skills. With 100% being an expert in the field, 50% equals average knowledge and 0% means it is new to me!"
                  : "Här hittar ni en beräkning av några av mina nuvarande färdigheter. Där 100% betyder expert i fältet, 50% är normal kunskap, och 0% betyder att det är nytt för mig!"),
          const Skills(),
          const SubTitle(text: "Interests"),
          const Interests(),
        ],
      ),
    );
  }
}
