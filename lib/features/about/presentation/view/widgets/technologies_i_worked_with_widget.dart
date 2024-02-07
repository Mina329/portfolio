import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';

class TechnologiesIWorkedWithWidget extends StatelessWidget {
  const TechnologiesIWorkedWithWidget({
    super.key,
  });
  static const List<String> technologies = [
    'Flutter',
    'Dart',
    'Python',
    'Git',
    'Firebase',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Technologies I have worked with:',
          style: StylesManager.styleMedium25(context).copyWith(
            color: ColorsManager.primaryColor,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: List.generate(
            technologies.length,
            (index) => Row(
              children: [
                const Icon(
                  Icons.play_arrow_rounded,
                  color: ColorsManager.primaryColor,
                ),
                Text(
                  technologies[index],
                  style: StylesManager.styleSemiBold18(context),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
