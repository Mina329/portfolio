import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/data_repo.dart';
import 'package:portfolio/core/widgets/section_title_widget.dart';
import 'package:portfolio/features/services/presentation/view/widgets/custom_flip_card.dart';

class DesktopServicesSectionView extends StatelessWidget {
  const DesktopServicesSectionView({super.key, required this.servicesKey});
  final GlobalKey servicesKey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      key: servicesKey,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: Column(
        children: [
          const SectionTitleWidget(title: 'What can I do?'),
          const SizedBox(
            height: 50,
          ),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: DataRepo.services
                .asMap()
                .entries
                .map(
                  (e) => CustomFlipCard(
                    serviceModel: e.value,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
