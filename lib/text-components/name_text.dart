import 'package:flutter/material.dart';

class NameText extends StatelessWidget {
  final double fontSize;
  final String text;

  const NameText(
      {super.key, this.fontSize = 35, this.text = "Jakob Lindecrantz"});
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "name",
      child: Material(
        color: Colors.transparent,
        child: Text(
          text,
          style: TextStyle(
              shadows: const [
                Shadow(
                  blurRadius: 2.0,
                  color: Colors.black,
                  offset: Offset(2.0, 2.0),
                ),
              ],
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
    );
  }
}
