import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets_manager.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/core/widgets/section_title_widget.dart';
import 'package:portfolio/features/about/presentation/view/widgets/personal_info_widget.dart';
import 'package:portfolio/features/about/presentation/view/widgets/technologies_i_worked_with_widget.dart';
import 'package:portfolio/features/about/presentation/view/widgets/who_am_i_widget.dart';

class DesktopAboutSectionView extends StatelessWidget {
  const DesktopAboutSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionTitleWidget(title: 'About Me'),
        Text(
          'Get to know me :)',
          style: StylesManager.styleExtraLight18(context),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          children: [
            const Flexible(
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
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
              ),
            )
          ],
        )
      ],
    );
  }
}
