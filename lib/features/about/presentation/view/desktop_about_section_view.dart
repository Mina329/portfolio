import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets_manager.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/core/widgets/section_title_widget.dart';
import 'package:portfolio/features/about/presentation/view/widgets/personal_info_widget.dart';
import 'package:portfolio/features/about/presentation/view/widgets/technologies_i_worked_with_widget.dart';
import 'package:portfolio/features/about/presentation/view/widgets/who_am_i_widget.dart';

class DesktopAboutSectionView extends StatelessWidget {
  const DesktopAboutSectionView({super.key, required this.aboutKey});
  final GlobalKey aboutKey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      key: aboutKey,
      padding: const EdgeInsets.only(right: 50),
      child: Column(
        children: [
          const SectionTitleWidget(title: 'About Me'),
          Text(
            'Get to know me :)',
            style: StylesManager.styleExtraLight18(context),
          ),
          const Row(
            children: [
              Flexible(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image(
                    image: AssetImage(
                      Assets.assetsImagesColored,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    WhoAmIWidget(),
                    Divider(
                      height: 50,
                      color: ColorsManager.greyColor,
                    ),
                    TechnologiesIWorkedWithWidget(),
                    Divider(
                      height: 50,
                      color: ColorsManager.greyColor,
                    ),
                    PersonalInfoWidget()
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
