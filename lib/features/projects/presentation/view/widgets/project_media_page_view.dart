import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/custom_dot_indicator.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/custom_project_card.dart';

class ProjectMediaPageView extends StatefulWidget {
  const ProjectMediaPageView({
    super.key,
    required this.widget,
  });

  final CustomProjectCard widget;

  @override
  State<ProjectMediaPageView> createState() => _ProjectMediaPageViewState();
}

class _ProjectMediaPageViewState extends State<ProjectMediaPageView> {
  int currentPageIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.circleChevronLeft,
                  size: getResponsiveFontSize(context, fontSize: 60),
                  color: ColorsManager.primaryColor,
                ),
                onPressed: () {
                  if (pageController.page! > 0) {
                    pageController.previousPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut);
                  }
                },
              ),
              Expanded(
                child: ExpandablePageView(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    widget.widget.projectModel.media.length,
                    (index) => SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image(
                          image: AssetImage(
                              widget.widget.projectModel.media[index]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.circleChevronRight,
                  size: getResponsiveFontSize(context, fontSize: 60),
                  color: ColorsManager.primaryColor,
                ),
                onPressed: () {
                  if (pageController.page! <
                      widget.widget.projectModel.media.length - 1) {
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut);
                  }
                },
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.widget.projectModel.media.length,
            (index) => Padding(
              padding: const EdgeInsets.only(right: 6),
              child: CustomDotIndicator(
                isActive: index == currentPageIndex,
              ),
            ),
          ),
        )
      ],
    );
  }
}
