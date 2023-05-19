import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostTitle extends StatelessWidget {
  final String text;
  final bool bold;

  const PostTitle({super.key, required this.text, this.bold = true});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
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
            fontWeight: bold ? FontWeight.bold : null,
            fontSize: 18,
            color: Colors.green),
      ),
    );
  }
}
