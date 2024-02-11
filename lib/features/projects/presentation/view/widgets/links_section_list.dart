import 'package:flutter/material.dart';
import 'package:portfolio/core/models/project_model.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/link_button.dart';

class LinksSectionList extends StatelessWidget {
  const LinksSectionList({
    super.key,
    required this.mainContext,
    required this.projectModel,
  });
  final BuildContext mainContext;
  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Text(
            'Links',
            style: StylesManager.styleMedium18(mainContext),
          ),
        ),
        const Divider(
          height: 40,
        ),
        ...List.generate(
          projectModel.links.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: LinkButton(
                mainContext: mainContext,
                linksModel: projectModel.links[index]),
          ),
        ),
      ],
    );
  }
}
