import 'package:flutter/material.dart';
import 'package:portfolio/page_structure.dart';
import 'package:portfolio/sections/interests.dart';
import 'package:portfolio/text-components/content_text.dart';
import 'package:portfolio/components/info_pins.dart';
import 'package:portfolio/text-components/post_title.dart';
import 'package:portfolio/text-components/sub_title.dart';
import 'package:portfolio/text-components/title.dart';
import '../sections/feats.dart';
import '../sections/skills.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageStructure(
      column: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SubTitle(text: "About"),
          const TitleText(title: "Who Am I?"),
          const PostTitle(
              text:
                  "Full-Stack Developer / Computer Science Bachelor / Information Security Expert"),
          const ContentText(
              text:
                  "Software Developer, Gamer and Movie Enthusiast. Currently looking to spread my wide knowledge in my fields of expertise. I love to create personal projects on my free time. Wether it is gaming API-webscrapers or Python toolboxes be sure to look around and see if anything catches your attention under the \"Projects\" tab!"),
          InfoPins(),
          const SizedBox(
            height: 50,
          ),
          const Feats(),
          const SubTitle(text: "Skills"),
          const ContentText(
              text:
                  "Below are an estimated rating of some of my current skills. With 100% being an expert in the field, 50% equals average knowledge and 0% means it is new to me!"),
          const Skills(),
          const SubTitle(text: "Interests"),
          const Interests(),
        ],
      ),
    );
  }
}
