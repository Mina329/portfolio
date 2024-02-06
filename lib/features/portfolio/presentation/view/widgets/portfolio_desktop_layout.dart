import 'package:flutter/material.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/desktop_navigation_bar.dart';

class PortfolioDesktopLayout extends StatelessWidget {
  const PortfolioDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DesktopNavigationBar(),
        Flexible(
          child: CustomScrollView(
            slivers: [],
          ),
        ),
      ],
    );
  }
}
