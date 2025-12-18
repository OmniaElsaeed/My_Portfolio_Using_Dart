import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';
import '../styles/style.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    super.key,
    required this.onNavMenuTap,
  });

  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      width: double.infinity,
      decoration: kHederDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {
              onNavMenuTap(0);
            },
          ),
          const Spacer(),

          // ===== NAV ITEMS (Scrollable) =====
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                navTitles.length,
                    (i) => Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: TextButton(
                    onPressed: () => onNavMenuTap(i),
                    child: Text(
                      navTitles[i],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.whitePrimary,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
