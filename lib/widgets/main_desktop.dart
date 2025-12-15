import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // intro message
              const Text(
                "Hi,\nI'm Omnia El-Saeed ,\nA Flutter Developer "
                    "\nAnd Data Analysis Enthusiastic",
                style: TextStyle(
                  fontSize: 30,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whiteSecondary,
                  fontStyle: FontStyle.normal

                ),
              ),
              const SizedBox(height: 15),

            ],
          ),
          // avatar img
          SizedBox(
            width: screenWidth / 2.8,
            height: screenWidth / 3.1,
            child: ClipOval(
              child: Image.asset(
                "assets/omnia.jpg",
                fit: BoxFit.cover,
              ),
            ),
          )




        ],
      ),
    );
  }
}
