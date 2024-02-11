import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/models/project_model.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';

class ProjectDialogTitle extends StatelessWidget {
  const ProjectDialogTitle({
    super.key,
    required this.mainContext,
    required this.projectModel,
  });

  final ProjectModel projectModel;
  final BuildContext mainContext;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              projectModel.name!,
              style: StylesManager.styleSemiBold25(mainContext),
            ),
          ),
        ),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  FontAwesomeIcons.xmark,
                  size: getResponsiveFontSize(context, fontSize: 40),
                  color: ColorsManager.primaryColor,
                )),
          ),
        )
      ],
    );
  }
}
