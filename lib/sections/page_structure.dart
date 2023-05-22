import 'package:flutter/material.dart';

import '../components/custom_appbar.dart';

class PageStructure extends StatelessWidget {
  final Column column;
  const PageStructure({super.key, required this.column});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppbar().customAppbar(context),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/starbackground.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 1000,
                child: Card(
                  color: Colors.black.withOpacity(0.5),
                  child: column,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
