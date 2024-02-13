import 'package:flutter/material.dart';
import 'package:portfolio/features/about/presentation/view/tablet_about_section_view.dart';
import 'package:portfolio/features/contacts/presentation/view/tablet_contact_section_view.dart';
import 'package:portfolio/features/home/presentation/view/desktop_home_section_view.dart';
import 'package:portfolio/features/projects/presentation/view/tablet_projects_section_view.dart';
import 'package:portfolio/features/services/presentation/view/tablet_services_section_view.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioTabletLayout extends StatelessWidget {
  const PortfolioTabletLayout(
      {super.key,
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
          padding: const EdgeInsets.only(left: 50),
          child: DesktopHomeSectionView(
            homeKey: homeSectionKey,
          ),
        ),
        TabletAboutSectionView(
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
