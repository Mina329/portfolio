import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/desktop_navigation_bar_item.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/myresume_desktop_button.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/theme_switch.dart';

class DesktopNavigationBar extends StatelessWidget {
  const DesktopNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Text(
          'Mina',
          style: StylesManager.styleDancingScript(context),
        ),
        const Spacer(),
        DesktopNavigationBarItem(title: 'HOME', onPressed: () {}),
        DesktopNavigationBarItem(title: 'ABOUT', onPressed: () {}),
        DesktopNavigationBarItem(title: 'SERVICES', onPressed: () {}),
        DesktopNavigationBarItem(title: 'PROJECTS', onPressed: () {}),
        DesktopNavigationBarItem(title: 'CONTACT', onPressed: () {}),
        const MyResumeDesktopButton(),
        const ThemeSwitch()
      ],
    );
  }
}
