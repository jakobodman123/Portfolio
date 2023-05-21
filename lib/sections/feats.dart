import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/cards/feat_card.dart';

class Feats extends StatelessWidget {
  const Feats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(10, 3, 0, 20),
      child: Align(
        alignment: Alignment.center,
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 15,
          spacing: 10,
          children: [
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
          ],
        ),
      ),
    );
  }
}
