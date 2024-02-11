import 'package:flutter/material.dart';

class PortfolioMobileLayout extends StatelessWidget {
  const PortfolioMobileLayout(
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
    return const Placeholder();
  }
}
