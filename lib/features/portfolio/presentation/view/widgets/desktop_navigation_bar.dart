import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/desktop_navigation_bar_item.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/myresume_desktop_button.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/theme_switch.dart';

class DesktopNavigationBar extends StatelessWidget {
  const DesktopNavigationBar({
    super.key,
    required this.aboutKey,
    required this.homeKey,
    required this.servicesKey,
    required this.projectsKey,
    required this.contactsKey,
  });
  final GlobalKey homeKey;
  final GlobalKey aboutKey;
  final GlobalKey servicesKey;
  final GlobalKey projectsKey;
  final GlobalKey contactsKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Mina',
          style: StylesManager.styleDancingScript(context),
        ),
        Row(
          children: [
            DesktopNavigationBarItem(
                title: 'HOME', onPressed: () => scrollToSection(homeKey)),
            DesktopNavigationBarItem(
                title: 'ABOUT', onPressed: () => scrollToSection(aboutKey)),
            DesktopNavigationBarItem(
                title: 'SERVICES',
                onPressed: () => scrollToSection(servicesKey)),
            DesktopNavigationBarItem(
                title: 'PROJECTS',
                onPressed: () => scrollToSection(projectsKey)),
            DesktopNavigationBarItem(
                title: 'CONTACT',
                onPressed: () => scrollToSection(contactsKey)),
            const MyResumeDesktopButton(),
            const ThemeSwitch(),
          ],
        )
      ],
    );
  }
}

void scrollToSection(GlobalKey key) {
  final context = key.currentContext;
  if (context != null) {
    Scrollable.ensureVisible(context,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
