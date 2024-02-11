import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/models/project_model.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/custom_dot_indicator.dart';

class TabletProjectMediaPageView extends StatefulWidget {
  const TabletProjectMediaPageView({super.key, required this.projectModel});
  final ProjectModel projectModel;

  @override
  State<TabletProjectMediaPageView> createState() =>
      _TabletProjectMediaPageViewState();
}

class _TabletProjectMediaPageViewState
    extends State<TabletProjectMediaPageView> {
  int currentPageIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(_pageListener);
  }

  void _pageListener() {
    final newIndex = pageController.page!.round();
    if (currentPageIndex != newIndex) {
      setState(() {
        currentPageIndex = newIndex;
      });
    }
  }

  @override
  void dispose() {
    pageController.removeListener(_pageListener);
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          children: List.generate(
            widget.projectModel.media.length,
            (index) => AspectRatio(
              aspectRatio: 16 / 9,
              child: Image(
                image: AssetImage(widget.projectModel.media[index]),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.projectModel.media.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 6),
                child: CustomDotIndicator(
                  isActive: index == currentPageIndex,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
