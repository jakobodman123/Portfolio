import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContentText extends StatelessWidget {
  final String text;
  final double fontSize;

  const ContentText({super.key, required this.text, this.fontSize = 13});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
      child: Text(
        text,
        style: TextStyle(shadows: const [
          Shadow(
            blurRadius: 2.0,
            color: Colors.black,
            offset: Offset(2.0, 2.0),
          ),
        ], fontSize: fontSize, color: Colors.white),
      ),
    );
  }
}
