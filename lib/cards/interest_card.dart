import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class InterestsCard extends StatelessWidget {
  final String content;
  final IconData icon;
  final Color iconColor;

  const InterestsCard(
      {super.key,
      required this.content,
      required this.icon,
      required this.iconColor});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: Card(
        color: primaryColor,
        child: Row(children: [
          const SizedBox(
            width: 10,
          ),
          FaIcon(
            icon,
            color: iconColor,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            content,
            style: const TextStyle(shadows: [
              Shadow(
                blurRadius: 2.0,
                color: Colors.black,
                offset: Offset(2.0, 2.0),
              ),
            ], fontSize: 13, color: Colors.white),
          ),
        ]),
      ),
    );
  }
}
