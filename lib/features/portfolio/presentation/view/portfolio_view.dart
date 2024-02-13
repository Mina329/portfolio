import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      floatingActionButton: FloatingActionButton(
        onPressed: () => scrollToSection(homeSectionKey),
        backgroundColor: Theme.of(context).brightness == Brightness.light
            ? Colors.black
            : Colors.white,
        child: Icon(
          Icons.arrow_drop_up_outlined,
          color: ColorsManager.primaryColor,
          size: MediaQuery.of(context).size.height * 0.05,
        ),
      ),
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
          : CustomNavigationBar(
              homeKey: homeSectionKey,
              aboutKey: aboutSectionKey,
              servicesKey: servicesSectionKey,
              projectsKey: projectsSectionKey,
              contactsKey: aboutSectionKey,
            ),
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
      body: SingleChildScrollView(
        controller: scrollController,
        child: AdaptiveLayout(
          mobileLayout: (context) => PortfolioMobileLayout(
            homeSectionKey: homeSectionKey,
            aboutSectionKey: aboutSectionKey,
            contactSectionKey: contactSectionKey,
            projectsSectionKey: projectsSectionKey,
            servicesSectionKey: servicesSectionKey,
          ),
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
      ),
    );
  }
}
