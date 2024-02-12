import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'WELCOME TO MY PORTFOLIO!',
              style: StylesManager.styleExtraLight30(context),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Image.asset(
          Assets.assetsAnimationWave,
          width: getResponsiveFontSize(context, fontSize: 60),
        ),
      ],
    );
  }
}
