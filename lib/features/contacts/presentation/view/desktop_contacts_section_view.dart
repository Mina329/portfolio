import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/data_repo.dart';
import 'package:portfolio/core/widgets/section_title_widget.dart';
import 'package:portfolio/features/contacts/presentation/view/widgets/contact_card.dart';

class DesktopContactSectionView extends StatelessWidget {
  const DesktopContactSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
      child: Column(
        children: [
          const SectionTitleWidget(title: 'Connect with Me'),
          const SizedBox(
            height: 50,
          ),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: DataRepo.contacts
                .asMap()
                .entries
                .map(
                  (e) => ContactCard(
                    contactModel: e.value,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
