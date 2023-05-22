import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final String iconPath;
  final bool isSelected;
  final VoidCallback onPressed;

  const LanguageButton({
    super.key,
    required this.iconPath,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            iconPath,
            width: 24,
            height: 24,
            fit: BoxFit.fill,
          ),
          Container(
            width: 24,
            height: 18,
            color: !isSelected ? Colors.black.withOpacity(0.5) : null,
          ),
        ],
      ),
    );
  }
}
