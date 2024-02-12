import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/size_config.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/core/widgets/adaptive_layout.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/custom_drawer.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/desktop_navigation_bar.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/portfolio_desktop_layout.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/portfolio_mobile_layout.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/portfolio_tablet_layout.dart';

class PortfolioView extends StatefulWidget {
  const PortfolioView({super.key});

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final GlobalKey homeSectionKey = GlobalKey();
  final GlobalKey aboutSectionKey = GlobalKey();
  final GlobalKey servicesSectionKey = GlobalKey();
  final GlobalKey projectsSectionKey = GlobalKey();
  final GlobalKey contactSectionKey = GlobalKey();
  final ScrollController scrollController = ScrollController();
  double savedScrollPosition = 0.0;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_saveScrollPosition);
  }

  void _restoreScrollPosition() {
    if (scrollController.hasClients) {
      scrollController.jumpTo(savedScrollPosition);
    }
  }

  void _saveScrollPosition() {
    savedScrollPosition = scrollController.offset;
  }

  @override
  void dispose() {
    scrollController.removeListener(_saveScrollPosition);
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _restoreScrollPosition());

    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.desktop
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
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
        mobileLayout: (context) => PortfolioMobileLayout(
          scrollController: scrollController,
          homeSectionKey: homeSectionKey,
          aboutSectionKey: aboutSectionKey,
          contactSectionKey: contactSectionKey,
          projectsSectionKey: projectsSectionKey,
          servicesSectionKey: servicesSectionKey,
        ),
        tabletLayout: (context) => PortfolioTabletLayout(
          scrollController: scrollController,
          homeSectionKey: homeSectionKey,
          aboutSectionKey: aboutSectionKey,
          contactSectionKey: contactSectionKey,
          projectsSectionKey: projectsSectionKey,
          servicesSectionKey: servicesSectionKey,
        ),
        desktopLayout: (context) => PortfolioDesktopLayout(
          scrollController: scrollController,
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
