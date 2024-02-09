import 'package:flutter/material.dart';
import 'package:portfolio/features/about/presentation/view/desktop_about_section_view.dart';
import 'package:portfolio/features/contacts/presentation/view/desktop_contacts_section_view.dart';
import 'package:portfolio/features/home/presentation/view/desktop_home_section_view.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/desktop_navigation_bar.dart';
import 'package:portfolio/features/projects/presentation/view/desktop_projects_section_view.dart';
import 'package:portfolio/features/services/presentation/view/desktop_services_section_view.dart';

class PortfolioDesktopLayout extends StatelessWidget {
  const PortfolioDesktopLayout({super.key});
  static GlobalKey homeSectionKey = GlobalKey();
  static GlobalKey aboutSectionKey = GlobalKey();
  static GlobalKey servicesSectionKey = GlobalKey();
  static GlobalKey projectsSectionKey = GlobalKey();
  static GlobalKey contactSectionKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: DesktopNavigationBar(
            aboutKey: aboutSectionKey,
            homeKey: homeSectionKey,
            servicesKey: servicesSectionKey,
            projectsKey: projectsSectionKey,
            contactsKey: contactSectionKey,
          ),
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
                  padding: const EdgeInsets.only(left: 100),
                  child: DesktopHomeSectionView(
                    homeKey: homeSectionKey,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: DesktopAboutSectionView(
                    aboutKey: aboutSectionKey,
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SliverToBoxAdapter(
                child: DesktopServicesSectionView(
                  servicesKey: servicesSectionKey,
                ),
              ),
              SliverToBoxAdapter(
                child: DesktopProjectsSectionView(
                  projectsKey: projectsSectionKey,
                ),
              ),
              SliverToBoxAdapter(
                child: DesktopContactSectionView(
                  contactKey: contactSectionKey,
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 50,
                ),
              ),
              const SliverToBoxAdapter(
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Developed in 💙 with '),
                      Text(
                        'Flutter',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 25,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
