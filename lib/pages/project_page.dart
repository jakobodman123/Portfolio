import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/build_icon.dart';
import 'package:portfolio/cards/project_card.dart';
import 'package:portfolio/text-components/sub_title.dart';
import 'package:portfolio/text-components/title.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/custom_appbar.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: CustomAppbar().customAppbar(context),
        body: Container(
          width: screenWidth,
          height: 1080,
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
                        const SubTitle(text: "Projects"),
                        const TitleText(title: "My Projects"),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 3, 0, 20),
                          child: Align(
                            alignment: Alignment.center,
                            child: Wrap(
                              //alignment: WrapAlignment.center,
                              runSpacing: 15,
                              spacing: 10,
                              children: [
                                ProjectCard(
                                  title: "Play Easy Champs",
                                  assetUrls: const [
                                    'assets/playeasychamps1.jpg',
                                    'assets/playeasychamps2.jpg',
                                    'assets/playeasychamps3.jpg',
                                  ],
                                  content:
                                      "Riot API webscraper fetching data and calculating summoner performance. Site is fully dynamic and stores matches after initial load. Have patience on intial server spin up though!",
                                  onPressed: () {
                                    launchUrl(Uri.parse(
                                        "https://github.com/jakobodman123/Summer-Project"));
                                  },
                                  buildCards: const [
                                    BuildCard(
                                      text: "Flutter",
                                    ),
                                    BuildCard(
                                      text: "Node.js",
                                    ),
                                    BuildCard(
                                      text: "Express",
                                    ),
                                    BuildCard(
                                      text: "MongoDB",
                                    ),
                                  ],
                                  demoUrl: "https://jakobodman123.github.io/#/",
                                ),
                                ProjectCard(
                                  title: "Portfolio Site",
                                  assetUrls: const [
                                    'assets/profile_photo_centered.jpg'
                                  ],
                                  content:
                                      "The Site you are currently browsing is custom made from scratch by yours truly! Made as modular as possible to allow further additions.",
                                  onPressed: () {
                                    launchUrl(Uri.parse(
                                        "https://github.com/jakobodman123/Summer-Project"));
                                  },
                                  buildCards: const [
                                    BuildCard(
                                      text: "Flutter",
                                    ),
                                  ],
                                ),
                                ProjectCard(
                                  title: "DogWalk",
                                  assetUrls: const [
                                    'assets/dogwalk1.jpg',
                                    'assets/dogwalk2.jpg',
                                    'assets/dogwalk3.jpg',
                                    'assets/dogwalk4.jpg',
                                  ],
                                  content:
                                      "School project with complex functions such as registering your dog, adding other friends and seeing their live dog walks on a map, see nearest trash bin, find dog friendly location and so on.",
                                  onPressed: () {
                                    launchUrl(Uri.parse(
                                        "https://github.com/PVT6/PVT6/tree/master"));
                                  },
                                  buildCards: const [
                                    BuildCard(
                                      text: "Flutter",
                                    ),
                                    BuildCard(
                                      text: "Java",
                                    ),
                                    BuildCard(
                                      text: "Firebase",
                                    ),
                                    BuildCard(
                                      text: "MapBox",
                                    ),
                                  ],
                                ),
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
