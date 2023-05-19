import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/text-components/content_text.dart';
import 'package:portfolio/components/colored_button.dart';
import 'package:portfolio/text-components/title.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final String title;
  final List<String> assetUrls;
  final String content;
  final VoidCallback onPressed;
  final String demoUrl;
  final List<Widget> buildCards;

  ProjectCard(
      {super.key,
      required this.title,
      required this.assetUrls,
      required this.content,
      required this.onPressed,
      this.demoUrl = "",
      this.buildCards = const <Widget>[]});

  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startAutoSwipe();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void startAutoSwipe() {
    _timer = Timer.periodic(const Duration(seconds: 6), (timer) {
      final nextPage = (_currentPage + 1) % widget.assetUrls.length;
      _pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }

  void resetTimer() {
    _timer?.cancel();
    startAutoSwipe();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 300,
      child: Card(
          color: primaryColor,
          child: Row(
            children: [
              SizedBox(
                width: 200,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TitleText(
                        title: widget.title,
                        fontSize: 20,
                      ),
                      ContentText(
                        text: widget.content,
                        fontSize: 11,
                      ),
                      Wrap(
                        children: widget.buildCards,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ColoredButton(
                              text: "View on Github",
                              width: 80,
                              height: 30,
                              onPressed: widget.onPressed),
                          widget.demoUrl != ""
                              ? ColoredButton(
                                  text: "Demo",
                                  width: 80,
                                  height: 30,
                                  onPressed: () {
                                    launchUrl(Uri.parse(widget.demoUrl));
                                  })
                              : const SizedBox(
                                  width: 80,
                                ),
                        ],
                      ),
                    ]),
              ),
              SizedBox(
                width: 190,
                height: 300,
                child: GestureDetector(
                  onHorizontalDragEnd: (DragEndDetails details) {
                    if (details.primaryVelocity! > 0) {
                      _pageController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    } else if (details.primaryVelocity! < 0) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    }
                  },
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: widget.assetUrls.length,
                    onPageChanged: (int index) {
                      setState(() {
                        _currentPage = index;
                      });
                      resetTimer();
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        alignment: Alignment(0, 1),
                        children: [
                          Image.asset(
                            widget.assetUrls[index],
                            fit: BoxFit.fill,
                            width: 190,
                            height: 300,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                widget.assetUrls.length,
                                (index) => Container(
                                  width: 8.0,
                                  height: 8.0,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _currentPage == index
                                        ? Colors.green
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
