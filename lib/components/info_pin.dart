import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';

class InfoPin extends StatelessWidget {
  final String leading;
  final String trailing;
  final bool copyable;
  const InfoPin({
    super.key,
    required this.leading,
    required this.trailing,
    this.copyable = false,
  });

  @override
  Widget build(BuildContext context) {
    return copyable
        ? InkWell(
            onTap: () {
              String textToCopy = trailing;
              FlutterClipboard.copy(textToCopy).then((value) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Copied to clipboard')),
                );
              });
            },
            child: Tooltip(
              richMessage: const TextSpan(
                text: "Copy To Clipboard",
                style: TextStyle(color: Colors.white),
              ),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    const TextSpan(
                      text: '> ',
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 2.0,
                              color: Colors.black,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.green),
                    ),
                    TextSpan(
                      text: leading,
                      style: const TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 2.0,
                              color: Colors.black,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                    const TextSpan(
                      text: ": ",
                      style: TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 2.0,
                              color: Colors.black,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                    TextSpan(
                      text: trailing,
                      style: const TextStyle(
                          shadows: [
                            Shadow(
                              blurRadius: 2.0,
                              color: Colors.black,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.green),
                    ),
                  ],
                ),
              ),
            ),
          )
        : RichText(
            text: TextSpan(
              children: <TextSpan>[
                const TextSpan(
                  text: '> ',
                  style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 2.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.green),
                ),
                TextSpan(
                  text: leading,
                  style: const TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 2.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.white),
                ),
                const TextSpan(
                  text: ": ",
                  style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 2.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.white),
                ),
                TextSpan(
                  text: trailing,
                  style: const TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 2.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.green),
                ),
              ],
            ),
          );
  }
}
