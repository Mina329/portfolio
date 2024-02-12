import 'package:flutter/material.dart';
import 'package:portfolio/features/about/presentation/view/mobile_about_section_view.dart';
import 'package:portfolio/features/contacts/presentation/view/tablet_contact_section_view.dart';
import 'package:portfolio/features/home/presentation/view/mobile_home_section_view.dart';
import 'package:portfolio/features/projects/presentation/view/tablet_projects_section_view.dart';
import 'package:portfolio/features/services/presentation/view/tablet_services_section_view.dart';

class PortfolioMobileLayout extends StatelessWidget {
  const PortfolioMobileLayout(
      {super.key,
      required this.homeSectionKey,
      required this.aboutSectionKey,
      required this.servicesSectionKey,
      required this.projectsSectionKey,
      required this.contactSectionKey,
      required this.scrollController});
  final GlobalKey homeSectionKey;
  final GlobalKey aboutSectionKey;
  final GlobalKey servicesSectionKey;
  final GlobalKey projectsSectionKey;
  final GlobalKey contactSectionKey;
  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MobileHomeSectionView(
              homeKey: homeSectionKey,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: MobileAboutSectionView(
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
