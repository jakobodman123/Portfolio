import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String text;

  const SubTitle({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
        child: Row(
          children: [
            const SizedBox(
              width: 3,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
                shadows: [
                  Shadow(
                    blurRadius: 2.0,
                    color: Colors.black,
                    offset: Offset(3.0, 3.0),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Container(
              width: 50,
              height: 1,
              color: Colors.green,
            )
          ],
        ));
  }
}
