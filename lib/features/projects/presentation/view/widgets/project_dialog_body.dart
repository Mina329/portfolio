import 'package:flutter/material.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/custom_project_card.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/features_section.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/links_section_list.dart';

class ProjectDialogBody extends StatelessWidget {
  const ProjectDialogBody({
    super.key,
    required this.widget,
    required this.mainContext,
  });

  final CustomProjectCard widget;
  final BuildContext mainContext;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: FeaturesSection(
            widget: widget,
            mainContext: mainContext,
          ),
        ),
        Expanded(
          child: LinksSectionList(
            mainContext: mainContext,
            widget: widget,
          ),
        ),
      ],
    );
  }
}
