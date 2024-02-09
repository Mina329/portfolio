import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/data_repo.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/core/widgets/section_title_widget.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/custom_project_card.dart';

class DesktopProjectsSectionView extends StatefulWidget {
  const DesktopProjectsSectionView({super.key});

  @override
  State<DesktopProjectsSectionView> createState() =>
      _DesktopProjectsSectionViewState();
}

class _DesktopProjectsSectionViewState
    extends State<DesktopProjectsSectionView> {
  bool _showAll = false;

  @override
  Widget build(BuildContext context) {
    final displayedProjects =
        _showAll ? DataRepo.projects : DataRepo.projects.take(5).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: Column(
        children: [
          const SectionTitleWidget(title: 'My Projects'),
          const SizedBox(height: 50),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: displayedProjects
                .map(
                  (projectModel) => CustomProjectCard(
                    projectModel: projectModel,
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 50),
          if (DataRepo.projects.length > 5)
            TextButton(
              onPressed: () {
                setState(() {
                  _showAll = !_showAll;
                });
              },
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    _showAll ? "Show Less" : "See More",
                    style: StylesManager.styleSemiBold18(context)
                        .copyWith(color: ColorsManager.primaryColor),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
