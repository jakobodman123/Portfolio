import 'package:flutter/material.dart';
import 'package:portfolio/components/page_row.dart';

import 'package:portfolio/components/media_button.dart';
import 'package:portfolio/cards/picture_hover.dart';

import 'package:portfolio/text-components/name_text.dart';
import 'package:provider/provider.dart';

import 'package:responsive_framework/responsive_framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/language_button.dart';
import 'notifier.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void updateSelectedLanguage(String language) {
    setState(() {
      Provider.of<Notifier>(context, listen: false)
          .setSelectedLanguage(language);
    });
  }

  @override
  Widget build(BuildContext context) {
    final notifier = Provider.of<Notifier>(context, listen: false);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          LanguageButton(
            iconPath: 'assets/swePic.png',
            isSelected: notifier.selectedLanguage == 'swe',
            onPressed: () => updateSelectedLanguage("swe"),
          ),
          LanguageButton(
            iconPath: 'assets/engPic.png',
            isSelected: notifier.selectedLanguage == 'eng',
            onPressed: () => updateSelectedLanguage("eng"),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/starbackground.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ResponsiveRowColumn(
          rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
          rowPadding: const EdgeInsets.only(top: 100),
          columnPadding:
              const EdgeInsets.only(top: 100, left: 10, right: 10, bottom: 10),
          layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            const ResponsiveRowColumnItem(
              child: SizedBox(),
            ),
            ResponsiveRowColumnItem(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const NameText(),
                    Text(
                      notifier.selectedLanguage == "eng"
                          ? "Junior Full-Stack Developer and Film/Game Enthusiast"
                          : "Junior Full-Stack Utvecklare och Film/Spel entusiast",
                      style: const TextStyle(shadows: [
                        Shadow(
                          blurRadius: 2.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        ),
                      ], fontSize: 20, color: Colors.white),
                    ),
                    const PageRow(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        MediaButton(
                            icon: FontAwesomeIcons.linkedin,
                            onPressed: () {
                              launchUrl(Uri.parse(
                                  "https://www.linkedin.com/in/jakobodmanlindecrantz"));
                            }),
                        MediaButton(
                            icon: FontAwesomeIcons.github,
                            onPressed: () {
                              launchUrl(Uri.parse(
                                  "https://github.com/jakobodman123"));
                            }),
                      ],
                    ),
                  ]),
            ),
            const ResponsiveRowColumnItem(
              child: PictureHover(),
            ),
            const ResponsiveRowColumnItem(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
