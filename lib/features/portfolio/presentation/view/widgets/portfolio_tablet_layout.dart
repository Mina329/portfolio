import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/view/desktop_home_section_view.dart';

class PortfolioTabletLayout extends StatelessWidget {
  const PortfolioTabletLayout(
      {super.key,
      required this.homeSectionKey,
      required this.aboutSectionKey,
      required this.servicesSectionKey,
      required this.projectsSectionKey,
      required this.contactSectionKey});
  final GlobalKey homeSectionKey;
  final GlobalKey aboutSectionKey;
  final GlobalKey servicesSectionKey;
  final GlobalKey projectsSectionKey;
  final GlobalKey contactSectionKey;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: DesktopHomeSectionView(
              homeKey: homeSectionKey,
            ),
          ),
        ),      ],
    );
  }
}
