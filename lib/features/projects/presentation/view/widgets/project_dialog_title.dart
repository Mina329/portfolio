import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/custom_project_card.dart';

class ProjectDialogTitle extends StatelessWidget {
  const ProjectDialogTitle({
    super.key,
    required this.widget,
    required this.mainContext,
  });

  final CustomProjectCard widget;
  final BuildContext mainContext;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Text(
          widget.projectModel.name!,
          style: StylesManager.styleSemiBold25(mainContext),
        ),
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              FontAwesomeIcons.xmark,
              size: getResponsiveFontSize(context, fontSize: 40),
              color: ColorsManager.primaryColor,
            ))
      ],
    );
  }
}
