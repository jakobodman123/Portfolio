import 'package:flutter/material.dart';
import 'package:portfolio/components/page_row.dart';

import 'package:portfolio/components/media_button.dart';
import 'package:portfolio/cards/picture_hover.dart';

import 'package:portfolio/text-components/name_text.dart';

import 'package:responsive_framework/responsive_framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    const Text(
                      "Film/Game Enthusiast and Junior Full-Stack Developer",
                      style: TextStyle(shadows: [
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
