import 'package:flutter/material.dart';
import 'package:portfolio/core/models/project_model.dart';
import 'package:portfolio/core/utils/styles_manager.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({
    super.key,
    required this.mainContext,
    required this.projectModel,
  });

  final ProjectModel projectModel;
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
          projectModel.features.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              '${index + 1}. ${projectModel.features[index]}',
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
