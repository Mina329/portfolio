import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/theme_switch.dart';

class TabletMobileThemeSwitch extends StatelessWidget {
  const TabletMobileThemeSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Theme Mode',
            style: StylesManager.styleSemiBold15(context),
          ),
          const ThemeSwitch(),
        ],
      ),
    );
  }
}
