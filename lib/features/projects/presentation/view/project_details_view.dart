import 'package:flutter/material.dart';
import 'package:portfolio/core/models/project_model.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/project_dialog_title.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/tablet_project_dialog_body.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/tablet_project_media_page_view.dart';

class ProjectDetailsView extends StatelessWidget {
  const ProjectDetailsView({super.key, required this.projectModel});
  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProjectDialogTitle(
                projectModel: projectModel,
                mainContext: context,
              ),
              const SizedBox(height: 10),
              TabletProjectMediaPageView(
                projectModel: projectModel,
              ),
              const SizedBox(height: 30),
              TabletProjectDialogBody(
                projectModel: projectModel,
              )
            ],
          ),
        ),
      ),
    );
  }
}
