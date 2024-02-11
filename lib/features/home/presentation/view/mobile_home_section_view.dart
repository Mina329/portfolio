import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets_manager.dart';
import 'package:portfolio/features/home/presentation/view/widgets/home_profile_card.dart';

class MobileHomeSectionView extends StatelessWidget {
  const MobileHomeSectionView({super.key, required this.homeKey});
  final GlobalKey homeKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: homeKey,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: const HomeProfileCard(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: const Align(
              alignment: Alignment.bottomRight,
              child: Image(
                image: AssetImage(
                  Assets.assetsImagesBlackWhite,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
