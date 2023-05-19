import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class FeatCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;

  const FeatCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.content});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 100,
      child: Stack(
        alignment: const Alignment(0, -1.3),
        children: [
          SizedBox(
            width: 200,
            height: 100,
            child: Card(
              color: primaryColor,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(shadows: [
                        Shadow(
                          blurRadius: 2.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        ),
                      ], fontSize: 24, color: Colors.white),
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
          ),
          FaIcon(
            icon,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
