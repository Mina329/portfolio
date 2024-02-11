import 'package:flutter/material.dart';
import 'package:portfolio/core/models/project_model.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/features_section.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/links_section_list.dart';

class ProjectDialogBody extends StatelessWidget {
  const ProjectDialogBody({
    super.key,
    required this.mainContext,
    required this.projectModel,
  });

  final ProjectModel projectModel;
  final BuildContext mainContext;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: FeaturesSection(
            projectModel: projectModel,
            mainContext: mainContext,
          ),
        ),
        Expanded(
          child: LinksSectionList(
            mainContext: mainContext,
            projectModel: projectModel,
          ),
        ),
      ],
    );
  }
}
