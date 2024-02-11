import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/core/widgets/section_title_widget.dart';
import 'package:portfolio/features/about/presentation/view/widgets/about_circle_avatar.dart';
import 'package:portfolio/features/about/presentation/view/widgets/my_cvs_widget.dart';
import 'package:portfolio/features/about/presentation/view/widgets/personal_info_widget.dart';
import 'package:portfolio/features/about/presentation/view/widgets/technologies_i_worked_with_widget.dart';
import 'package:portfolio/features/about/presentation/view/widgets/who_am_i_widget.dart';

class TabletAboutSectionView extends StatelessWidget {
  const TabletAboutSectionView({super.key, required this.aboutKey});
  final GlobalKey aboutKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      key: aboutKey,
      child: Column(
        children: [
          const SectionTitleWidget(title: 'About Me'),
          Text(
            'Get to know me :)',
            style: StylesManager.styleExtraLight18(context),
          ),
          const SizedBox(
            height: 20,
          ),
          const AboutCircleAvatar(),
          const SizedBox(
            height: 50,
          ),
          const WhoAmIWidget(),
          const Divider(
            height: 50,
            color: ColorsManager.greyColor,
          ),
          const TechnologiesIWorkedWithWidget(),
          const Divider(
            height: 50,
            color: ColorsManager.greyColor,
          ),
          const PersonalInfoWidget(),
          const SizedBox(
            height: 20,
          ),
          const MyCVsWidget()
        ],
      ),
    );
  }
}
