import 'package:portfolio/core/models/project_model.dart';
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
  static List<ProjectModel> projects = [
    ProjectModel(
      banner: Assets.assetsImagesTamamBanner,
      icon: Assets.assetsImagesTamamLogo,
      description:
          'Tamam is a todo app designed to streamline your daily activities, boost productivity, and empower you to achieve your goals efficiently.',
      name: 'Tamam',
    ),
    ProjectModel(
      banner: Assets.assetsImagesNectarBanner,
      icon: Assets.assetsImagesNectarLogo,
      description:
          'Online Grocery Shopping Companion. Shop groceries seamlessly with our feature-rich Flutter app.',
      name: 'Nectar',
    ),
    ProjectModel(
      banner: Assets.assetsImagesAttendoBanner,
      icon: Assets.assetsImagesAttendoLogo,
      description:
          'Attendance Management System based on face recognition - Graduation Project',
      name: 'Attendo',
    ),
    ProjectModel(
      banner: Assets.assetsImagesEspBanner,
      icon: Assets.assetsImagesEspLogo,
      description:
          'A Flutter Project connected with IOT university project that measure temprature, humidity , pressure and altitude',
      name: 'ESP Monitor',
    ),
    ProjectModel(
      banner: Assets.assetsImagesMushroom,
      icon: null,
      description:
          ' Chest X-Ray Images Dataset: Exploarity Data Analysis and Deep learning Models',
      name: ' Chest X-Ray Images Dataset',
    ),
    ProjectModel(
      banner: Assets.assetsImagesHeartDisease,
      icon: null,
      description:
          'Heart Failure Prediction Dataset : Data Analysis, Data Visualization, Data Preprocessing and 7 ML Classification Models',
      name: 'Heart Disease',
    ),
    ProjectModel(
      banner: Assets.assetsImagesNetflix,
      icon: null,
      description: 'Netflix Data Analysis and Visualization',
      name: 'Netflix Dataset',
    ),
    ProjectModel(
      banner: Assets.assetsImagesShopping,
      icon: null,
      description: 'Shopping Dataset Analysis and Visualization',
      name: 'Shopping Dataset',
    ),
    ProjectModel(
      banner: Assets.assetsImagesSuperstore,
      icon: null,
      description: 'SuperStore Analysis and Visualization',
      name: 'SuperStore Dataset',
    ),
    ProjectModel(
      banner: Assets.assetsImagesTitanic,
      icon: null,
      description:
          'Titanic Survival Dataset: Data Analysis, Data Visualization, Data Preprocessing, and 7 ML Classification Models',
      name: 'Titanic  Dataset',
    ),
    ProjectModel(
      banner: Assets.assetsImagesIris,
      icon: null,
      description:
          'Iris Species Dataset: Data Analysis, Data Visualization, Data Preprocessing, 7 ML Classification Models, and 3 ML Clustering Models',
      name: 'Iris Species Dataset',
    ),
    ProjectModel(
      banner: Assets.assetsImagesMedical,
      icon: null,
      description:
          'Medical Cost Personal Datasets: Data Analysis, Data Visualization, Data Preprocessing, and 5 Regression Models',
      name: 'Medical Cost Personal Dataset',
    ),
    ProjectModel(
      banner: Assets.assetsImagesHousePrice,
      icon: null,
      description:
          'House price prediction Dataset: Data Analysis, Data Visualization, Data Preprocessing, and 5 ML Regression Models',
      name: 'House price prediction Dataset',
    ),
    ProjectModel(
      banner: Assets.assetsImagesHousePrice2,
      icon: null,
      description:
          'House price Dataset: Data Analysis, Data Visualization, Data Preprocessing, and 10 ML Regression Models',
      name: 'House price Dataset',
    ),
    ProjectModel(
      banner: Assets.assetsImagesMushroom,
      icon: null,
      description:
          ' Mushroom Dataset: Data Analysis, Data Visualization, Data Preprocessing, and 9 ML Classification Models',
      name: ' Mushroom Dataset',
    ),
  ];
}
