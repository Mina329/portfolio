import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/adaptive_layout.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/portfolio_desktop_layout.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/portfolio_mobile_layout.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/portfolio_tablet_layout.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const PortfolioMobileLayout(),
        tabletLayout: (context) => const PortfolioTabletLayout(),
        desktopLayout: (context) => const PortfolioDesktopLayout(),
      ),
    );
  }
}


