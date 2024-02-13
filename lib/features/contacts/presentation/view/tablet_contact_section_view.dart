import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/data_repo.dart';
import 'package:portfolio/core/widgets/section_title_widget.dart';
import 'package:portfolio/features/contacts/presentation/view/widgets/contact_card.dart';

class TabletContactSectionView extends StatelessWidget {
  const TabletContactSectionView({super.key, required this.contactKey});
  final GlobalKey contactKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: contactKey,
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          const SectionTitleWidget(title: 'Connect with Me'),
          const SizedBox(
            height: 50,
          ),
          CarouselSlider.builder(
            itemCount: DataRepo.contacts.length,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                ContactCard(
              contactModel: DataRepo.contacts[i],
            ),
            options: CarouselOptions(
              height: 300,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enableInfiniteScroll: false,
            ),
          )
        ],
      ),
    );
  }
}
