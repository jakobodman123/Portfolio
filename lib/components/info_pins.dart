import 'package:flutter/material.dart';

class InfoPins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
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
                      text: 'Location: ',
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
                      text: 'Stockholm, Sweden',
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
                  ],
                ),
              ),
              //Phone
              RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
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
                      text: 'Phone: ',
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
                      text: '0763085859',
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
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
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
                      text: 'Gmail: ',
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
                      text: 'jakobodman1997@gmail.com',
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
                  ],
                ),
              ),
              //Degree
              RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
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
                      text: 'Degree: ',
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
                      text: 'B.S Computer Science',
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
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
