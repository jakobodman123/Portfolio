import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../constants.dart';
import '../pages/notifier.dart';

class PageButton extends StatefulWidget {
  final VoidCallback onPressed;
  final CurrentPage currentPage;
  final String text;

  const PageButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.currentPage});

  @override
  PageButtonState createState() => PageButtonState();
}

class PageButtonState extends State<PageButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final pageState = Provider.of<Notifier>(context);
    return InkWell(
      onTap: pageState.currentPage == widget.currentPage
          ? () {}
          : widget.onPressed,
      onHover: (value) {
        setState(() {
          isHovered = value;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 5, right: 10),
        child: Container(
          width: 50,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: pageState.currentPage == widget.currentPage
                ? Colors.green
                : isHovered
                    ? Colors.green
                    : primaryColor.withOpacity(0.7),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: Text(
              widget.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
