import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/nav_items.dart';
import '../constants/size.dart';
import '../widgets/about_section.dart';
import '../widgets/contact_section.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/footer.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/projects_section.dart';
import '../widgets/skills_desktop.dart';
import '../widgets/skills_mobile.dart';
import '../utils/project_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(navTitles.length, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : DrawerMobile(onNavItemTap: (int navIndex) {
          scaffoldKey.currentState?.closeEndDrawer();
          scrollToSection(navIndex);
        }),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(key: navbarKeys[0]),

              // HEADER
              if (constraints.maxWidth >= kMinDesktopWidth)
                HeaderDesktop(onNavMenuTap: scrollToSection)
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () => scaffoldKey.currentState?.openEndDrawer(),
                  onNavItemTap: scrollToSection,
                ),

              // MAIN
              if (constraints.maxWidth >= kMinDesktopWidth)
                const MainDesktop()
              else
                const MainMobile(),

              // ABOUT
      AboutSection(
        key: navbarKeys[1],
      ),
      const SizedBox(height: 30),
      // SKILLS
      Container(
      key: navbarKeys[2],
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      // title
      const Text(
      "Skills",
      textAlign: TextAlign.center,
      style: TextStyle(
      fontSize: 27,
      fontWeight: FontWeight.bold,
      color: CustomColor.yellowSecondary,
      fontStyle: FontStyle.italic,
      ),
      ),
      const SizedBox(height: 70),

      // platforms and skills
      if (constraints.maxWidth >= kMedDesktopWidth)
      const SkillsDesktop()
      else
      const SkillsMobile(),
      ],
      ),
      ),
      const SizedBox(height: 30),

              // PROJECTS
              ProjectsSection(
                key: navbarKeys[3],
              ),

              const SizedBox(height: 30),

              // CONTACT
              ContactInfoSection(
                key: navbarKeys[4],
              ),


              const SizedBox(height: 30),

              // FOOTER
              const Footer(),
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 5) {
      return;
    }

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}