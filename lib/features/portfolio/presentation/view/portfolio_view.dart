import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/size_config.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/core/widgets/adaptive_layout.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/custom_drawer.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/desktop_navigation_bar.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/portfolio_desktop_layout.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/portfolio_mobile_layout.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/portfolio_tablet_layout.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  static GlobalKey homeSectionKey = GlobalKey();
  static GlobalKey aboutSectionKey = GlobalKey();
  static GlobalKey servicesSectionKey = GlobalKey();
  static GlobalKey projectsSectionKey = GlobalKey();
  static GlobalKey contactSectionKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.desktop
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Mina',
                    style: StylesManager.styleDancingScript(context),
                  ),
                ),
              ],
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.desktop
          ? CustomDrawer(
              functions: [
                () => scrollToSection(homeSectionKey),
                () => scrollToSection(aboutSectionKey),
                () => scrollToSection(servicesSectionKey),
                () => scrollToSection(projectsSectionKey),
                () => scrollToSection(contactSectionKey),
                () => scrollToSection(aboutSectionKey),
              ],
            )
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const PortfolioMobileLayout(),
        tabletLayout: (context) => PortfolioTabletLayout(
          homeSectionKey: homeSectionKey,
          aboutSectionKey: aboutSectionKey,
          contactSectionKey: contactSectionKey,
          projectsSectionKey: projectsSectionKey,
          servicesSectionKey: servicesSectionKey,
        ),
        desktopLayout: (context) => PortfolioDesktopLayout(
          homeSectionKey: homeSectionKey,
          aboutSectionKey: aboutSectionKey,
          contactSectionKey: contactSectionKey,
          projectsSectionKey: projectsSectionKey,
          servicesSectionKey: servicesSectionKey,
        ),
      ),
    );
  }
}
