import 'package:flutter/material.dart';
import 'package:portfolio/components/page_button.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:provider/provider.dart';

import '../pages/about_page.dart';
import '../pages/page_state.dart';
import '../pages/project_page.dart';
import '../pages/resume_page.dart';
import 'colored_button.dart';

class PageRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageState = Provider.of<PageState>(context);
    return Row(
      children: [
        PageButton(
          text: "Home",
          currentPage: CurrentPage.Home,
          onPressed: () {
            pageState.setCurrentPage(CurrentPage.Home);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
        PageButton(
          text: "About",
          currentPage: CurrentPage.About,
          onPressed: () {
            pageState.setCurrentPage(CurrentPage.About);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutPage()),
            );
          },
        ),
        PageButton(
          text: "Resume",
          currentPage: CurrentPage.Resume,
          onPressed: () {
            pageState.setCurrentPage(CurrentPage.Resume);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ResumePage()),
            );
          },
        ),
        PageButton(
          text: "Projects",
          currentPage: CurrentPage.Projects,
          onPressed: () {
            pageState.setCurrentPage(CurrentPage.Projects);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProjectPage()),
            );
          },
        ),
        PageButton(
          text: "Contact",
          currentPage: CurrentPage.Contact,
          onPressed: () {
            pageState.setCurrentPage(CurrentPage.Contact);
          },
        ),
      ],
    );
  }
}
