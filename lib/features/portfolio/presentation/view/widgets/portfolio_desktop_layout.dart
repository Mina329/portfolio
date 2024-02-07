import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/custom_sliver_appbar_delegate.dart';
import 'package:portfolio/features/home/presentation/view/home_section_view.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/desktop_navigation_bar.dart';

class PortfolioDesktopLayout extends StatelessWidget {
  const PortfolioDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: CustomSliverAppBarDelegate(
            maxHeight: 60.0,
            minHeight: 60.0,
            child: const DesktopNavigationBar(),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 100),
            child: DesktopHomeSectionView(),
          ),
        ),
      ],
    );
  }
}
