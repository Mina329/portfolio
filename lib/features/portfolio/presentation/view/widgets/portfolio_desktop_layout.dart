import 'package:flutter/material.dart';
import 'package:portfolio/features/about/presentation/view/desktop_about_section_view.dart';
import 'package:portfolio/features/contacts/presentation/view/desktop_contacts_section_view.dart';
import 'package:portfolio/features/home/presentation/view/desktop_home_section_view.dart';
import 'package:portfolio/features/projects/presentation/view/desktop_projects_section_view.dart';
import 'package:portfolio/features/services/presentation/view/desktop_services_section_view.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioDesktopLayout extends StatelessWidget {
  const PortfolioDesktopLayout({
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
          padding: const EdgeInsets.only(left: 100),
          child: DesktopHomeSectionView(
            homeKey: homeSectionKey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: DesktopAboutSectionView(
            aboutKey: aboutSectionKey,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        DesktopServicesSectionView(
          servicesKey: servicesSectionKey,
        ),
        DesktopProjectsSectionView(
          projectsKey: projectsSectionKey,
        ),
        DesktopContactSectionView(
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
