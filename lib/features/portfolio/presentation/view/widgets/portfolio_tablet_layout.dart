import 'package:flutter/material.dart';
import 'package:portfolio/features/about/presentation/view/tablet_about_section_view.dart';
import 'package:portfolio/features/contacts/presentation/view/tablet_contact_section_view.dart';
import 'package:portfolio/features/home/presentation/view/desktop_home_section_view.dart';
import 'package:portfolio/features/projects/presentation/view/tablet_projects_section_view.dart';
import 'package:portfolio/features/services/presentation/view/tablet_services_section_view.dart';

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
        ),
        SliverToBoxAdapter(
          child: TabletAboutSectionView(
            aboutKey: aboutSectionKey,
          ),
        ),
        SliverToBoxAdapter(
          child: TabletServicesSectionView(
            servicesKey: servicesSectionKey,
          ),
        ),
        SliverToBoxAdapter(
          child: TabletProjectsSectionView(
            projectsKey: projectsSectionKey,
          ),
        ),
        SliverToBoxAdapter(
          child: TabletContactSectionView(
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
    );
  }
}
