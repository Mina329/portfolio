import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/styles_manager.dart';

class DesktopNavigationBarItem extends StatelessWidget {
  const DesktopNavigationBarItem({
    super.key,
    required this.title,
    this.onPressed,
  });
  final String title;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 40,
        child: MaterialButton(
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              title,
              style: StylesManager.styleRegular18(context),
            ),
          ),
        ),
      ),
    );
  }
}
