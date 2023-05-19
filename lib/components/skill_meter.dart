import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../constants.dart';

class SkillMeter extends StatelessWidget {
  final String text;
  final double percent;
  const SkillMeter({super.key, required this.text, required this.percent});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 475,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: const TextStyle(shadows: [
                  Shadow(
                    blurRadius: 2.0,
                    color: Colors.black,
                    offset: Offset(2.0, 2.0),
                  ),
                ], fontSize: 13, color: Colors.white),
              ),
              Text(
                "${(percent * 100).toStringAsFixed(0)}%",
                style: const TextStyle(shadows: [
                  Shadow(
                    blurRadius: 2.0,
                    color: Colors.black,
                    offset: Offset(2.0, 2.0),
                  ),
                ], fontSize: 13, color: Colors.white),
              ),
            ],
          ),
          LinearPercentIndicator(
            animation: true,
            animationDuration: 1000,
            lineHeight: 11.0,
            padding: const EdgeInsets.only(top: 3),
            percent: percent,
            backgroundColor: primaryColor,
            progressColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
