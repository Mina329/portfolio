import 'package:flutter/material.dart';
import 'package:portfolio/features/about/presentation/view/mobile_about_section_view.dart';
import 'package:portfolio/features/contacts/presentation/view/tablet_contact_section_view.dart';
import 'package:portfolio/features/home/presentation/view/mobile_home_section_view.dart';
import 'package:portfolio/features/projects/presentation/view/tablet_projects_section_view.dart';
import 'package:portfolio/features/services/presentation/view/tablet_services_section_view.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioMobileLayout extends StatelessWidget {
  const PortfolioMobileLayout({
    super.key,
    required this.homeSectionKey,
    required this.aboutSectionKey,
    required this.servicesSectionKey,
    required this.projectsSectionKey,
    required this.contactSectionKey,
  });
  final GlobalKey homeSectionKey;
  final GlobalKey aboutSectionKey;
  final GlobalKey servicesSectionKey;
  final GlobalKey projectsSectionKey;
  final GlobalKey contactSectionKey;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: MobileHomeSectionView(
            homeKey: homeSectionKey,
          ),
        ),
        MobileAboutSectionView(
          aboutKey: aboutSectionKey,
        ),
        TabletServicesSectionView(
          servicesKey: servicesSectionKey,
        ),
        TabletProjectsSectionView(
          projectsKey: projectsSectionKey,
        ),
        TabletContactSectionView(
          contactKey: contactSectionKey,
        ),
        const SizedBox(
          height: 50,
        ),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Developed by Mina using '),
              InkWell(
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  var url = 'https://flutter.dev/';
                  await launchUrl(Uri.parse(url));
                },
                child: const Text(
                  'Flutter',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
