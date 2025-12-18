import 'package:flutter/material.dart';
import '../constants/nav_items.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback onLogoTap;
  final VoidCallback onMenuTap;
  final Function(int)? onNavItemTap;

  const HeaderMobile({
    super.key,
    required this.onLogoTap,
    required this.onMenuTap,
    this.onNavItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(onTap: onLogoTap, child: const Text("Logo")),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: onMenuTap,
          ),
        ],
      ),
    );
  }
}
