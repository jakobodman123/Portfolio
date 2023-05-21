import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class ContactCard extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final Widget content;

  const ContactCard(
      {super.key,
      required this.leadingIcon,
      required this.title,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 450,
      child: Card(
        color: primaryColor,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: primaryColor.withOpacity(0.7),
                ),
                child: Center(
                  child: FaIcon(
                    leadingIcon,
                    color: Colors.green,
                    size: 16,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                  child: Text(
                    title,
                    style: const TextStyle(
                        shadows: [
                          Shadow(
                            blurRadius: 2.0,
                            color: Colors.black,
                            offset: Offset(2.0, 2.0),
                          ),
                        ],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                content,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
