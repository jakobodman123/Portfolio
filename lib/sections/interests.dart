import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../cards/interest_card.dart';

class Interests extends StatelessWidget {
  const Interests({
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
          ],
        ),
      ),
    );
  }
}
