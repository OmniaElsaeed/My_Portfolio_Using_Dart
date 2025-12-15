import 'package:flutter/material.dart';
import '../constants/colors.dart';

class ContactInfoSection extends StatelessWidget {
  const ContactInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          const Text(
            "Get in Touch",
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
              color: CustomColor.yellowSecondary,
              fontStyle: FontStyle.italic,

            ),
          ),
          const SizedBox(height: 30),
          // Phone
          Row(
            children: const [
              Icon(Icons.phone, color: Colors.white),
              SizedBox(width: 10),
              Text(
                "+20 1140919895",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
          //Email
          const SizedBox(height: 20),
          Row(
            children: const [
              Icon(Icons.email, color: Colors.white),
              SizedBox(width: 10),
              Text(
                "omniaaelsaeed@gmail.com",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // LinkedIn
          Row(
            children: const [
              Icon(Icons.link, color: Colors.white),
              SizedBox(width: 10),
              Text(
                "https://www.linkedin.com/in/omnia-elsaeed-045891296",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: const [
              Icon(Icons.link, color: Colors.white),
              SizedBox(width: 10),
              Text(
                "https://github.com/OmniaElsaeed",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Facebook
          Row(
            children: const [
              Icon(Icons.facebook, color: Colors.white),
              SizedBox(width: 10),
              Text(
                "https://www.facebook.com/share/19NDegGkWJ/",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
