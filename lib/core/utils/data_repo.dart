import 'package:portfolio/core/models/service_model.dart';
import 'package:portfolio/core/utils/assets_manager.dart';

abstract class DataRepo {
  static List<ServiceModel> services = [
    ServiceModel(
      serviceIcon: Assets.assetsImagesMobile,
      serviceTitle: 'Mobile App\nDevelopment',
      services: [
        'Mobile app development via Flutter',
        '- Splash Screen',
        '- APIs',
        '- Firebase',
        '- Database',
        '- Responsive'
      ],
    ),
    ServiceModel(
      serviceIcon: Assets.assetsImagesComputer,
      serviceTitle: 'Desktop App\nDevelopment',
      services: [
        'Desktop app development via Flutter',
        '- APIs',
        '- Firebase',
        '- Database',
        '- Responsive',
        '- Adaptive',
      ],
    ),
    ServiceModel(
      serviceIcon: Assets.assetsImagesDataAnalysis,
      serviceTitle: 'Data Analysis',
      services: [
        '- Data Analysis',
        '- Data Visualization',
        '- Dashboard',
      ],
    ),
    ServiceModel(
      serviceIcon: Assets.assetsImagesAi,
      serviceTitle: 'ML & Deep learning\nModels',
      services: [
        '- ML models',
        '- Deep learning Models',
      ],
    ),
  ];
}
