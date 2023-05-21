import 'package:flutter/material.dart';
import 'package:portfolio/components/skill_meter.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(10, 3, 0, 20),
      child: Align(
        alignment: Alignment.center,
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 15,
          spacing: 10,
          children: [
            SkillMeter(text: "Flutter/Dart", percent: 0.9),
            SkillMeter(text: "Java", percent: 0.8),
            SkillMeter(text: "NodeJS/Express", percent: 0.55),
            SkillMeter(text: "Javascript", percent: 0.6),
            SkillMeter(text: "MySQL/MongoDB", percent: 0.5),
            SkillMeter(text: "Python", percent: 0.65),
            SkillMeter(text: "Git/GitHub", percent: 0.6),
            SkillMeter(text: "Linux", percent: 0.4),
            SkillMeter(text: "HTML/CSS", percent: 0.7),
            SkillMeter(text: "C#/C++", percent: 0.5),
          ],
        ),
      ),
    );
  }
}
