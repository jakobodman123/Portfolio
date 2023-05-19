import 'package:flutter/material.dart';
import 'package:portfolio/components/page_row.dart';
import 'package:portfolio/text-components/name_text.dart';

class CustomAppbar extends AppBar {
  CustomAppbar({super.key});

  AppBar customAppbar(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: SizedBox(
        width: 1000,
        child: Row(children: [
          screenWidth < 600
              ? const NameText(
                  fontSize: 24,
                  text: "J.L",
                )
              : const NameText(
                  fontSize: 24,
                ),
          const Spacer(),
          PageRow(),
        ]),
      ),
      elevation: 0,
      backgroundColor: Colors.black,
    );
  }
}
