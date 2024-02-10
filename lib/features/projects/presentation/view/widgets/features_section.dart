import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/custom_project_card.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({
    super.key,
    required this.widget,
    required this.mainContext,
  });

  final CustomProjectCard widget;
  final BuildContext mainContext;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Features',
          style: StylesManager.styleMedium18(mainContext),
        ),
        const SizedBox(
          height: 20,
        ),
        ...List.generate(
          widget.projectModel.features.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              '${index + 1}. ${widget.projectModel.features[index]}',
              style: StylesManager.styleExtraLight18(
                mainContext,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
