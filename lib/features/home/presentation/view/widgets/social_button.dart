import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/styles_manager.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    this.onPressed,
    required this.icon,
  });
  final Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(
            icon,
            size: getResponsiveFontSize(
              context,
              fontSize: 50,
            ),
          )),
    );
  }
}
