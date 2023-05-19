import 'package:flutter/material.dart';

import '../constants.dart';

class BuildCard extends StatelessWidget {
  final String text;

  const BuildCard({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 60,
      child: Card(
        color: primaryColor,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
            ),
          ),
        ),
      ),
    );
  }
}
