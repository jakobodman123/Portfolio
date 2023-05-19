import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/custom_appbar.dart';
import 'package:portfolio/components/page_row.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/text-components/content_text.dart';
import 'package:portfolio/cards/feat_card.dart';
import 'package:portfolio/components/info_pins.dart';
import 'package:portfolio/cards/interest_card.dart';
import 'package:portfolio/text-components/name_text.dart';
import 'package:portfolio/text-components/post_title.dart';
import 'package:portfolio/components/skill_meter.dart';
import 'package:portfolio/text-components/sub_title.dart';
import 'package:portfolio/text-components/title.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AboutPage extends StatelessWidget {
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 3, 0, 20),
                        child: Align(
                          alignment: Alignment.center,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            runSpacing: 15,
                            spacing: 10,
                            children: const [
                              FeatCard(
                                  icon: FontAwesomeIcons.hourglass,
                                  title: "5",
                                  content: "Years within IT"),
                              FeatCard(
                                  icon: FontAwesomeIcons.book,
                                  title: "4",
                                  content: "Documented Projects"),
                              FeatCard(
                                  icon: FontAwesomeIcons.language,
                                  title: "7",
                                  content: "Fluent Programming Languages"),
                              FeatCard(
                                  icon: FontAwesomeIcons.faceSmile,
                                  title: "3",
                                  content: "Spoken languages"),
                            ],
                          ),
                        ),
                      ),
                      const SubTitle(text: "Skills"),
                      const ContentText(
                          text:
                              "Below are an estimated rating of some of my current skills. With 100% being an expert in the field, 50% equals average knowledge and 0% means it is new to me!"),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 3, 0, 20),
                        child: Align(
                          alignment: Alignment.center,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            runSpacing: 15,
                            spacing: 10,
                            children: const [
                              SkillMeter(text: "Flutter/Dart", percent: 0.9),
                              SkillMeter(text: "Java", percent: 0.8),
                              SkillMeter(text: "NodeJS/Express", percent: 0.55),
                              SkillMeter(text: "Javascript", percent: 0.6),
                              SkillMeter(text: "MySQL/MongoDB", percent: 0.5),
                              SkillMeter(text: "Python", percent: 0.65),
                              SkillMeter(text: "Git/GitHub", percent: 0.75),
                              SkillMeter(text: "Linux", percent: 0.4),
                              SkillMeter(text: "HTML/CSS", percent: 0.7),
                              SkillMeter(text: "C#/C++", percent: 0.5),
                            ],
                          ),
                        ),
                      ),
                      const SubTitle(text: "Interests"),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 3, 0, 20),
                        child: Align(
                          alignment: Alignment.center,
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            runSpacing: 15,
                            spacing: 10,
                            children: const [
                              InterestsCard(
                                  content: "Programming",
                                  icon: FontAwesomeIcons.codeBranch,
                                  iconColor: Colors.yellow),
                              InterestsCard(
                                  content: "Cyber Security",
                                  icon: FontAwesomeIcons.userSecret,
                                  iconColor: Colors.brown),
                              InterestsCard(
                                  content: "Web Development",
                                  icon: FontAwesomeIcons.html5,
                                  iconColor: Colors.orange),
                              InterestsCard(
                                  content: "Movies",
                                  icon: FontAwesomeIcons.film,
                                  iconColor: Colors.blue),
                              InterestsCard(
                                  content: "Gaming",
                                  icon: FontAwesomeIcons.gamepad,
                                  iconColor: Colors.green),
                              InterestsCard(
                                  content: "Gym",
                                  icon: FontAwesomeIcons.heartPulse,
                                  iconColor: Colors.red),
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
      ),
    );
  }
}
