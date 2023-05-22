import 'package:flutter/material.dart';
import 'package:portfolio/components/build_icon.dart';
import 'package:portfolio/cards/project_card.dart';
import 'package:portfolio/sections/page_structure.dart';
import 'package:portfolio/text-components/sub_title.dart';
import 'package:portfolio/text-components/title.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'notifier.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedLanguage =
        Provider.of<Notifier>(context, listen: false).selectedLanguage;
    return PageStructure(
      column: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SubTitle(text: "Projects"),
          TitleText(
              title:
                  selectedLanguage == "eng" ? "My Projects" : "Mina Projekt"),
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
                    content: selectedLanguage == "eng"
                        ? "Riot API webscraper fetching data and calculating summoner performance. Site is fully dynamic and stores matches after initial load. Have patience on intial server spin up though!"
                        : "Riot API webscraper som hämtar data och räknar ut en spelares prestation på deras matcher. Sidan är helt dynamisk och samlar matchar i databas efter första laddning. Ha tålamod medan server spinner igång dock!",
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
                    demoUrl: "https://www.playeasychamps.com/#/",
                  ),
                  ProjectCard(
                    title: "Portfolio Site",
                    assetUrls: const [
                      'assets/portfolio1.jpg',
                      'assets/portfolio2.png',
                      'assets/portfolio3.jpg',
                    ],
                    content: selectedLanguage == "eng"
                        ? "The Site you are currently browsing is custom made from scratch by yours truly! Made as modular as possible to allow further additions."
                        : "Sidan du är på just nu läser igenom är skräddarsydd av mig! Gjort för att vara så modulär som möjligt och tillåta framtida tillägg.",
                    onPressed: () {
                      launchUrl(Uri.parse(
                          "https://github.com/jakobodman123/Portfolio"));
                    },
                    demoUrl: "https://my-portfolio-sepia-phi.vercel.app/#/",
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
                    content: selectedLanguage == "eng"
                        ? "School project with complex functions such as registering your dog, adding other friends and seeing their live dog walks on a map, see nearest trash bin, find dog friendly location and so on."
                        : "Skolprojekt med komplexa funktioner som att registera en hund, lägga till andra vänner och se deras hundar ta promenader live på karta, se närmaste soptunna, hitta hunvänliga platser m.m.",
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
    );
  }
}
