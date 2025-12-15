import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "Omnia",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: CustomColor.yellowSecondary,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
