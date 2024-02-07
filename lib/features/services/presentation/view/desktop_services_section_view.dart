import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets_manager.dart';
import 'package:portfolio/core/widgets/section_title_widget.dart';
import 'package:portfolio/features/services/presentation/view/widgets/custom_flip_card.dart';

class DesktopServicesSectionView extends StatelessWidget {
  const DesktopServicesSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 50,vertical: 50),
      child: Column(
        children: [
          SectionTitleWidget(title: 'What can I do?'),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: CustomFlipCard(
                  assetImage: Assets.assetsImagesMobile,
                  cardName: 'Mobile App\nDevelopment',
                  backSideTexts: [
                    'Mobile app development via Flutter',
                    '- Splash Screen',
                    '- APIs',
                    '- Firebase',
                    '- Database',
                    '- Responsive'
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                child: CustomFlipCard(
                  assetImage: Assets.assetsImagesComputer,
                  cardName: 'Desktop App\nDevelopment',
                  backSideTexts: [
                    'Desktop app development via Flutter',
                    '- APIs',
                    '- Firebase',
                    '- Database',
                    '- Responsive',
                    '- Adaptive',
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                child: CustomFlipCard(
                  assetImage: Assets.assetsImagesDataAnalysis,
                  cardName: 'Data Analysis',
                  backSideTexts: [
                    '- Data Analysis',
                    '- Data Visualization',
                    '- Dashboard',
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                child: CustomFlipCard(
                  assetImage: Assets.assetsImagesAi,
                  cardName: 'ML & Deep learning\nModels',
                  backSideTexts: [
                    '- ML models',
                    '- Deep learning Models',
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
