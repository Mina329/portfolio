import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/size_config.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/features/about/presentation/view/widgets/mobile_technologies_widget.dart';

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
        MediaQuery.of(context).size.width < SizeConfig.tablet
            ? Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: technologies
                    .map(
                      (e) => MobileTechnologiesWidget(
                        tecnology: e,
                      ),
                    )
                    .toList(),
              )
            : Row(
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
