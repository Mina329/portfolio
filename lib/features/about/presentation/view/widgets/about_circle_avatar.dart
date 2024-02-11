import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets_manager.dart';
import 'package:portfolio/core/utils/colors_manager.dart';

class AboutCircleAvatar extends StatelessWidget {
  const AboutCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ColorsManager.primaryColor, width: 10),
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        radius: MediaQuery.of(context).size.width * 0.15,
        backgroundImage: const AssetImage(
          Assets.assetsImagesColoredCircle,
        ),
      ),
    );
  }
}
