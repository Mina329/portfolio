import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';

class WhoAmIWidget extends StatelessWidget {
  const WhoAmIWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Who am I?',
          style: StylesManager.styleMedium25(context).copyWith(
            color: ColorsManager.primaryColor,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'I\'m Mina Emil, a Flutter Developer and AI Engineer.',
          style: StylesManager.styleSemiBold25(context),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'I\'m a fresh graduate from Ain Shams University with a bachelor\'s degree in Computer Science. My journey in the world of technology and software development has been marked by a specialization in Flutter and Machine Learning. Notably, I have achieved the status of Kaggle Expert, reflecting my deep commitment to and expertise in Machine Learning and data science. This recognition underscores my ability to tackle complex data challenges and deliver insightful solutions.',
          style: StylesManager.styleLight20(context).copyWith(height: 1.5),
        ),
      ],
    );
  }
}
