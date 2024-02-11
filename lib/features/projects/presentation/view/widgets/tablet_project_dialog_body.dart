import 'package:flutter/material.dart';
import 'package:portfolio/core/models/project_model.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/features_section.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/links_section_list.dart';

class TabletProjectDialogBody extends StatelessWidget {
  const TabletProjectDialogBody({super.key, required this.projectModel});
  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FeaturesSection(
          projectModel: projectModel,
          mainContext: context,
        ),
        const SizedBox(
          height: 20,
        ),
        LinksSectionList(
          mainContext: context,
          projectModel: projectModel,
        ),
      ],
    );
  }
}
