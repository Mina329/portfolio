import 'package:flutter/material.dart';
import 'package:portfolio/features/about/presentation/view/desktop_about_section_view.dart';
import 'package:portfolio/features/home/presentation/view/desktop_home_section_view.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/desktop_navigation_bar.dart';

class PortfolioDesktopLayout extends StatelessWidget {
  const PortfolioDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: DesktopNavigationBar(),
        ),
        Flexible(
          child: CustomScrollView(
            slivers: [
              // SliverPersistentHeader(
              //   pinned: true,
              //   delegate: CustomSliverAppBarDelegate(
              //     maxHeight: 60.0,
              //     minHeight: 60.0,
              //     child: const Padding(
              //       padding: EdgeInsets.symmetric(horizontal: 20),
              //       child: DesktopNavigationBar(),
              //     ),
              //   ),
              // ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: DesktopHomeSectionView(),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: DesktopAboutSectionView(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
