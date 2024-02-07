import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets_manager.dart';
import 'package:portfolio/features/home/presentation/view/widgets/home_profile_card.dart';

class DesktopHomeSectionView extends StatelessWidget {
  const DesktopHomeSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 50,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Assets.assetsImagesBlackWhite,
          ),
          alignment: Alignment.centerRight,
          scale: 1.1,
        ),
      ),
      child: const HomeProfileCard(),
    );
  }
}