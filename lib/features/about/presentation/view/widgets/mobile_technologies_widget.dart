import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';

class MobileTechnologiesWidget extends StatelessWidget {
  const MobileTechnologiesWidget({super.key, required this.tecnology});
  final String tecnology;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.play_arrow_rounded,
          color: ColorsManager.primaryColor,
        ),
        Text(
          tecnology,
          style: StylesManager.styleSemiBold18(context),
        ),
      ],
    );
  }
}
