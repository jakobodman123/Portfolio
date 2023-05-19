import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/main.dart';

class MediaButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const MediaButton({super.key, required this.icon, required this.onPressed});

  MediaButtonState createState() => MediaButtonState();
}

class MediaButtonState extends State<MediaButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onPressed,
        onHover: (value) {
          setState(() {
            isHovered = value;
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 10, right: 5),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isHovered ? Colors.green : primaryColor.withOpacity(0.7),
            ),
            child: Center(
              child: FaIcon(
                widget.icon,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
        ));
  }
}
