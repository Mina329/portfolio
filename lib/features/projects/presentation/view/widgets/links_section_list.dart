import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/custom_project_card.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/link_button.dart';

class LinksSectionList extends StatelessWidget {
  const LinksSectionList({
    super.key,
    required this.mainContext,
    required this.widget,
  });
  final BuildContext mainContext;
  final CustomProjectCard widget;

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
          height: 10,
        ),
        ...List.generate(
          widget.projectModel.links.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: LinkButton(
                mainContext: mainContext,
                linksModel: widget.projectModel.links[index]),
          ),
        ),
      ],
    );
  }
}
