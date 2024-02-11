import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/data_repo.dart';
import 'package:portfolio/core/widgets/section_title_widget.dart';
import 'package:portfolio/features/services/presentation/view/widgets/custom_flip_card.dart';

class TabletServicesSectionView extends StatelessWidget {
  const TabletServicesSectionView({super.key, required this.servicesKey});
  final GlobalKey servicesKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: servicesKey,
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          const SectionTitleWidget(title: 'What can I do?'),
          const SizedBox(
            height: 50,
          ),
          CarouselSlider.builder(
            itemCount: DataRepo.services.length,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: CustomFlipCard(
                serviceModel: DataRepo.services[i],
              ),
            ),
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.4,
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
