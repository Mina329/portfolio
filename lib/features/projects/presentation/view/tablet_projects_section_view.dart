import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/data_repo.dart';
import 'package:portfolio/core/widgets/section_title_widget.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/custom_project_card.dart';

class TabletProjectsSectionView extends StatelessWidget {
  const TabletProjectsSectionView({super.key, required this.projectsKey});
  final GlobalKey projectsKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: projectsKey,
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          const SectionTitleWidget(title: 'My Projects'),
          const SizedBox(height: 50),
          CarouselSlider.builder(
            itemCount: DataRepo.projects.length,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: CustomProjectCard(
                    projectModel: DataRepo.projects[i],
                  ),
                ),
            options: CarouselOptions(
              height: 350,
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
