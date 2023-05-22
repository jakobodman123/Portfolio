import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/cards/feat_card.dart';
import 'package:provider/provider.dart';

import '../pages/notifier.dart';

class Feats extends StatelessWidget {
  const Feats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final selectedLanguage =
        Provider.of<Notifier>(context, listen: false).selectedLanguage;
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 3, 0, 20),
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
                content: selectedLanguage == "eng"
                    ? "Years within IT"
                    : "År inom IT"),
            FeatCard(
                icon: FontAwesomeIcons.book,
                title: "4",
                content: selectedLanguage == "eng"
                    ? "Documented Projects"
                    : "Dokumenterad Projekt"),
            FeatCard(
                icon: FontAwesomeIcons.language,
                title: "6",
                content: selectedLanguage == "eng"
                    ? "Fluent Programming Languages"
                    : "Flytande Programmeringspråk"),
          ],
        ),
      ),
    );
  }
}
