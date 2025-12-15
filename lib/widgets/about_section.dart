import 'package:flutter/material.dart';
import '../constants/colors.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      padding: const EdgeInsets.all(25),
      color: CustomColor.bgLight1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Center(
            child: Text(
              "About Me",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: CustomColor.yellowSecondary,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(height: 20),

          Text(
            "I am a third-year Computer Science student, passionate about Flutter development and data analysis, eager to build innovative apps and explore data-driven solutions."
            ,style: TextStyle(
              fontSize: 16,
              height: 1.5,
              color: CustomColor.whiteSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
