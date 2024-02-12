import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/models/contact_model.dart';
import 'package:portfolio/core/models/drawer_item_model.dart';
import 'package:portfolio/core/models/links_model.dart';
import 'package:portfolio/core/models/project_model.dart';
import 'package:portfolio/core/models/service_model.dart';
import 'package:portfolio/core/utils/assets_manager.dart';

abstract class DataRepo {
  static List<ServiceModel> services = [
    ServiceModel(
      serviceIcon: Assets.assetsImagesMobile,
      serviceTitle: 'Mobile App\nDevelopment',
      services: [
        'Flutter-based mobile app development.'
      ],
    ),
    ServiceModel(
      serviceIcon: Assets.assetsImagesComputer,
      serviceTitle: 'Desktop App\nDevelopment',
      services: [
        'Flutter-powered desktop app development.'
      ],
    ),
    ServiceModel(
      serviceIcon: Assets.assetsImagesDataAnalysis,
      serviceTitle: 'Data Analysis',
      services: ['Data analysis and visualization with dashboard creation.'],
    ),
    ServiceModel(
      serviceIcon: Assets.assetsImagesAi,
      serviceTitle: 'ML & Deep learning\nModels',
      services: [
        'Implementation of machine learning and deep learning models.'
      ],
    ),
  ];
  static List<ProjectModel> projects = [
    ProjectModel(
      banner: Assets.assetsImagesProjectsMediaTamamBanner,
      icon: Assets.assetsImagesProjectsMediaTamamLogo,
      description:
          'Tamam is a todo app designed to streamline your daily activities, boost productivity, and empower you to achieve your goals efficiently.',
      name: 'Tamam',
      media: [
        Assets.assetsImagesProjectsMediaTamamBanner,
        Assets.assetsImagesProjectsMediaTamamSplash1,
        Assets.assetsImagesProjectsMediaTamamSplash2,
        Assets.assetsImagesProjectsMediaTamamRegister,
        Assets.assetsImagesProjectsMediaTamamOnboarding1,
        Assets.assetsImagesProjectsMediaTamamOnboarding2,
        Assets.assetsImagesProjectsMediaTamamOnboarding3,
        Assets.assetsImagesProjectsMediaTamamIndex,
        Assets.assetsImagesProjectsMediaTamamCalendar1,
        Assets.assetsImagesProjectsMediaTamamCalendar2,
        Assets.assetsImagesProjectsMediaTamamChooseCategory,
        Assets.assetsImagesProjectsMediaTamamChoosePriority,
        Assets.assetsImagesProjectsMediaTamamChooseTime,
        Assets.assetsImagesProjectsMediaTamamEditTask,
        Assets.assetsImagesProjectsMediaTamamFocus1,
        Assets.assetsImagesProjectsMediaTamamFocus2,
        Assets.assetsImagesProjectsMediaTamamIndexAr,
        Assets.assetsImagesProjectsMediaTamamLogin,
        Assets.assetsImagesProjectsMediaTamamNewCategory,
        Assets.assetsImagesProjectsMediaTamamProfile,
        Assets.assetsImagesProjectsMediaTamamProfileFr,
      ],
      links: [
        LinksModel(
          link: 'https://youtu.be/eiDWajZcPsg?si=pHDB63lAvrYz9rWX',
          text: 'Watch Video',
          iconData: FontAwesomeIcons.youtube,
        ),
        LinksModel(
          link: 'https://github.com/Mina329/Tamam-Todo',
          text: 'Github',
          iconData: FontAwesomeIcons.github,
        ),
        LinksModel(
          link:
              'https://play.google.com/store/apps/details?id=com.mina329.tamam',
          text: 'Google Play Store',
          iconData: FontAwesomeIcons.googlePlay,
        ),
      ],
      features: [
        '11+ Screens'
            'Responsive UI',
        'Bloc and Cubit State Management',
        'Clean Architecture',
        'Localization (7 languages)',
        'Error Handling',
        'Cache',
        'Light & Dark Theme',
        'Local Notification',
        'Firebase Auth',
        'Firebase Firestore',
        'Firebase Storage',
        'Local and Remote Datasources',
        'Hive Database',
      ],
    ),
    ProjectModel(
      banner: Assets.assetsImagesProjectsMediaNectarBanner,
      icon: Assets.assetsImagesProjectsMediaNectarLogo,
      description:
          'Online Grocery Shopping Companion. Shop groceries seamlessly with our feature-rich Flutter app.',
      name: 'Nectar',
      media: [
        Assets.assetsImagesProjectsMediaNectarBanner,
        Assets.assetsImagesProjectsMediaNectarSplash,
        Assets.assetsImagesProjectsMediaNectarShop1,
        Assets.assetsImagesProjectsMediaNectarShop2,
        Assets.assetsImagesProjectsMediaNectarAbout,
        Assets.assetsImagesProjectsMediaNectarAccountDark,
        Assets.assetsImagesProjectsMediaNectarAddressConfirm,
        Assets.assetsImagesProjectsMediaNectarAddresses,
        Assets.assetsImagesProjectsMediaNectarCart,
        Assets.assetsImagesProjectsMediaNectarCategorySection,
        Assets.assetsImagesProjectsMediaNectarExclusiveSection,
        Assets.assetsImagesProjectsMediaNectarExplore,
        Assets.assetsImagesProjectsMediaNectarFavouriteDark,
        Assets.assetsImagesProjectsMediaNectarGroceriesSection,
        Assets.assetsImagesProjectsMediaNectarItemDetails,
        Assets.assetsImagesProjectsMediaNectarLogin,
        Assets.assetsImagesProjectsMediaNectarMap,
        Assets.assetsImagesProjectsMediaNectarMydetails,
        Assets.assetsImagesProjectsMediaNectarOnboarding,
        Assets.assetsImagesProjectsMediaNectarOrderSuccess,
        Assets.assetsImagesProjectsMediaNectarOrders,
        Assets.assetsImagesProjectsMediaNectarOtp,
        Assets.assetsImagesProjectsMediaNectarPayment,
        Assets.assetsImagesProjectsMediaNectarPdf,
        Assets.assetsImagesProjectsMediaNectarPhone,
        Assets.assetsImagesProjectsMediaNectarSearchDark,
        Assets.assetsImagesProjectsMediaNectarSetting,
      ],
      links: [
        LinksModel(
          link: 'https://youtu.be/okuoOpuW0a0?si=gdVNaLCQ8F4LF-i1',
          text: 'Watch Video',
          iconData: FontAwesomeIcons.youtube,
        ),
        LinksModel(
          link: 'https://github.com/Mina329/nectar',
          text: 'Github',
          iconData: FontAwesomeIcons.github,
        ),
      ],
      features: [
        '18 Screens',
        'Responsive UI',
        'Twilio integration (Phone Verify)',
        'Oauth2 with Google and JWT Authentication',
        'Bloc, Cubit and Hydrated Cubit State Management',
        'MVVM Design Pattern',
        'Stripe Integration (Payment Gateway)',
        'Localization',
        'Error Handling',
        'Pagination',
        'Google Maps integration',
        'GeoCoding Integration',
        'Cache',
        'Invoice PDF Generation',
        'Light & Dark Theme',
      ],
    ),
    ProjectModel(
      banner: Assets.assetsImagesProjectsMediaAttendoBanner,
      icon: Assets.assetsImagesProjectsMediaAttendoLogo,
      description:
          'Attendance Management System based on face recognition - Graduation Project',
      name: 'Attendo',
      media: [
        Assets.assetsImagesProjectsMediaAttendoBanner,
        Assets.assetsImagesProjectsMediaAttendoApplication1,
        Assets.assetsImagesProjectsMediaAttendoApplication2,
        Assets.assetsImagesProjectsMediaAttendoApplication3,
        Assets.assetsImagesProjectsMediaAttendoApplication4,
        Assets.assetsImagesProjectsMediaAttendoApplication5,
        Assets.assetsImagesProjectsMediaAttendoApplication6,
        Assets.assetsImagesProjectsMediaAttendoApplication7,
        Assets.assetsImagesProjectsMediaAttendoApplication8,
        Assets.assetsImagesProjectsMediaAttendoApplication9,
        Assets.assetsImagesProjectsMediaAttendoApplication10,
        Assets.assetsImagesProjectsMediaAttendoApplication11,
        Assets.assetsImagesProjectsMediaAttendoApplication12,
        Assets.assetsImagesProjectsMediaAttendoDashboard1,
        Assets.assetsImagesProjectsMediaAttendoDashboard2,
        Assets.assetsImagesProjectsMediaAttendoDashboard3,
        Assets.assetsImagesProjectsMediaAttendoDashboard4,
        Assets.assetsImagesProjectsMediaAttendoDashboard5,
      ],
      links: [
        LinksModel(
          link: 'https://vimeo.com/878351771',
          text: 'Watch Video',
          iconData: FontAwesomeIcons.youtube,
        ),
        LinksModel(
          link: 'https://github.com/Mina329/attendo',
          text: 'Github',
          iconData: FontAwesomeIcons.github,
        ),
      ],
      features: [
        '📷 Take Attendance with Face Recognition',
        '🔢 Take Attendance with QR Code and ID',
        '📊 Generate Reports',
        '🔄 Automating Attendance Tracking Process',
        '📋 Admin Dashboard',
        '📘 API Docs',
        '📱 Mobile Application',
        '🌐 Cross-platform'
      ],
    ),
    ProjectModel(
      banner: Assets.assetsImagesProjectsMediaEspBanner,
      icon: Assets.assetsImagesProjectsMediaEspLogo,
      description:
          'A Flutter Project connected with IOT university project that measure temprature, humidity , pressure and altitude',
      name: 'ESP Monitor',
      media: [
        Assets.assetsImagesProjectsMediaEspBanner,
        Assets.assetsImagesProjectsMediaEspP1,
        Assets.assetsImagesProjectsMediaEspP2,
        Assets.assetsImagesProjectsMediaEspP3,
        Assets.assetsImagesProjectsMediaEspP4,
        Assets.assetsImagesProjectsMediaEspP5,
      ],
      links: [
        LinksModel(
          link: 'https://vimeo.com/878358652',
          text: 'Watch Video',
          iconData: FontAwesomeIcons.youtube,
        ),
        LinksModel(
          link:
              'https://github.com/Mina329/Weather-Station-ESP32-Project-Flutter',
          text: 'Github',
          iconData: FontAwesomeIcons.github,
        ),
      ],
      features: [
        '6+ Screens',
        'Real-time Monitoring',
        'ESP32 Integration',
        'Firebase Backend',
        'Alarm System',
        'User-Friendly Interface',
      ],
    ),
    ProjectModel(
      banner: Assets.assetsImagesProjectsMediaXray,
      icon: null,
      description:
          ' Chest X-Ray Images Dataset: Exploarity Data Analysis and Deep learning Models',
      media: [
        Assets.assetsImagesProjectsMediaXray,
      ],
      name: 'Chest X-Ray Images Dataset',
      links: [
        LinksModel(
          link:
              'https://www.kaggle.com/code/minaemil329/chest-x-ray-classification-with-transfer-learning',
          text: 'Kaggle Notebook',
          iconData: FontAwesomeIcons.kaggle,
        ),
      ],
      features: [
        'Exploarity Data Analysis',
        'Deep learning Models',
      ],
    ),
    ProjectModel(
      banner: Assets.assetsImagesProjectsMediaHeartDisease,
      icon: null,
      description:
          'Heart Failure Prediction Dataset : Data Analysis, Data Visualization, Data Preprocessing and 7 ML Classification Models',
      media: [
        Assets.assetsImagesProjectsMediaHeartDisease,
      ],
      name: 'Heart Disease',
      links: [
        LinksModel(
          link:
              'https://www.kaggle.com/code/minaemil329/heartdisease-analysis-visualization-and-classify',
          text: 'Kaggle Notebook',
          iconData: FontAwesomeIcons.kaggle,
        ),
      ],
      features: [
        'Data Analysis',
        'Data Visualization',
        'Data Preprocessing',
        '7 ML Classification Models',
      ],
    ),
    ProjectModel(
      banner: Assets.assetsImagesProjectsMediaNetflix,
      icon: null,
      description: 'Netflix Data Analysis and Visualization',
      media: [
        Assets.assetsImagesProjectsMediaNetflix,
      ],
      name: 'Netflix Dataset',
      links: [
        LinksModel(
          link:
              'https://www.kaggle.com/code/minaemil329/netflix-data-cleaning-analysis-and-visualization',
          text: 'Kaggle Notebook',
          iconData: FontAwesomeIcons.kaggle,
        ),
      ],
      features: [
        'Data Analysis',
        'Data Visualization',
      ],
    ),
    ProjectModel(
      banner: Assets.assetsImagesProjectsMediaShopping,
      icon: null,
      description: 'Shopping Dataset Analysis and Visualization',
      name: 'Shopping Dataset',
      media: [
        Assets.assetsImagesProjectsMediaShopping,
      ],
      links: [
        LinksModel(
          link:
              'https://www.kaggle.com/code/minaemil329/shopping-analysis-and-visualization',
          text: 'Kaggle Notebook',
          iconData: FontAwesomeIcons.kaggle,
        ),
      ],
      features: [
        'Data Analysis',
        'Data Visualization',
      ],
    ),
    ProjectModel(
      banner: Assets.assetsImagesProjectsMediaSuperstore,
      icon: null,
      description: 'SuperStore Analysis and Visualization',
      name: 'SuperStore Dataset',
      media: [
        Assets.assetsImagesProjectsMediaSuperstore,
      ],
      links: [
        LinksModel(
          link:
              'https://www.kaggle.com/code/minaemil329/superstore-analysis-and-visualization',
          text: 'Kaggle Notebook',
          iconData: FontAwesomeIcons.kaggle,
        ),
      ],
      features: [
        'Data Analysis',
        'Data Visualization',
      ],
    ),
    ProjectModel(
      banner: Assets.assetsImagesProjectsMediaTitanic,
      icon: null,
      description:
          'Titanic Survival Dataset: Data Analysis, Data Visualization, Data Preprocessing, and 7 ML Classification Models',
      name: 'Titanic  Dataset',
      media: [
        Assets.assetsImagesProjectsMediaTitanic,
      ],
      links: [
        LinksModel(
          link:
              'https://www.kaggle.com/code/minaemil329/titanic-survival-analysis-visualization-classify',
          text: 'Kaggle Notebook',
          iconData: FontAwesomeIcons.kaggle,
        ),
      ],
      features: [
        'Data Analysis',
        'Data Visualization',
        'Data Preprocessing',
        '7 ML Classification Models'
      ],
    ),
    ProjectModel(
      banner: Assets.assetsImagesProjectsMediaIris,
      icon: null,
      description:
          'Iris Species Dataset: Data Analysis, Data Visualization, Data Preprocessing, 7 ML Classification Models, and 3 ML Clustering Models',
      name: 'Iris Species Dataset',
      media: [
        Assets.assetsImagesProjectsMediaIris,
      ],
      links: [
        LinksModel(
          link:
              'https://www.kaggle.com/code/minaemil329/iris-analysis-visualization-classify-clustering',
          text: 'Kaggle Notebook',
          iconData: FontAwesomeIcons.kaggle,
        ),
      ],
      features: [
        'Data Analysis',
        'Data Visualization',
        'Data Preprocessing',
        '7 ML Classification Models',
        '3 ML Clustering Models'
      ],
    ),
    ProjectModel(
      banner: Assets.assetsImagesProjectsMediaMedical,
      icon: null,
      description:
          'Medical Cost Personal Datasets: Data Analysis, Data Visualization, Data Preprocessing, and 5 Regression Models',
      name: 'Medical Cost Personal Dataset',
      media: [
        Assets.assetsImagesProjectsMediaMedical,
      ],
      links: [
        LinksModel(
          link:
              'https://www.kaggle.com/code/minaemil329/insuranse-charges-eda-prediction',
          text: 'Kaggle Notebook',
          iconData: FontAwesomeIcons.kaggle,
        ),
      ],
      features: [
        'Data Analysis',
        'Data Visualization',
        'Data Preprocessing',
        '5 Regression Models',
      ],
    ),
    ProjectModel(
      banner: Assets.assetsImagesProjectsMediaHousePrice,
      icon: null,
      description:
          'House price prediction Dataset: Data Analysis, Data Visualization, Data Preprocessing, and 5 ML Regression Models',
      name: 'House price prediction Dataset',
      media: [
        Assets.assetsImagesProjectsMediaHousePrice,
      ],
      links: [
        LinksModel(
          link:
              'https://www.kaggle.com/code/minaemil329/house-price-analysis-visualization-and-prediction',
          text: 'Kaggle Notebook',
          iconData: FontAwesomeIcons.kaggle,
        ),
      ],
      features: [
        'Data Analysis',
        'Data Visualization',
        'Data Preprocessing',
        '5 Regression Models',
      ],
    ),
    ProjectModel(
      banner: Assets.assetsImagesProjectsMediaHousePrice2,
      icon: null,
      description:
          'House price Dataset: Data Analysis, Data Visualization, Data Preprocessing, and 10 ML Regression Models',
      name: 'House price Dataset',
      media: [
        Assets.assetsImagesProjectsMediaHousePrice2,
      ],
      links: [
        LinksModel(
          link:
              'https://www.kaggle.com/code/minaemil329/house-price-eda-prediction',
          text: 'Kaggle Notebook',
          iconData: FontAwesomeIcons.kaggle,
        ),
      ],
      features: [
        'Data Analysis',
        'Data Visualization',
        'Data Preprocessing',
        '10 Regression Models',
      ],
    ),
    ProjectModel(
      banner: Assets.assetsImagesProjectsMediaMushroom,
      icon: null,
      description:
          ' Mushroom Dataset: Data Analysis, Data Visualization, Data Preprocessing, and 9 ML Classification Models',
      name: ' Mushroom Dataset',
      media: [
        Assets.assetsImagesProjectsMediaMushroom,
      ],
      links: [
        LinksModel(
          link:
              'https://www.kaggle.com/code/minaemil329/mushroom-eda-classification',
          text: 'Kaggle Notebook',
          iconData: FontAwesomeIcons.kaggle,
        ),
      ],
      features: [
        'Data Analysis',
        'Data Visualization',
        'Data Preprocessing',
        '9 ML Classification Models',
      ],
    ),
  ];
  static List<ContactModel> contacts = [
    ContactModel(
      iconData: Icons.phone,
      title: 'Phone',
      value: '(+20)1280080910',
    ),
    ContactModel(
      iconData: Icons.mail,
      title: 'Email',
      value: 'mina.emil.fakhry@outlook.com',
    ),
    ContactModel(
      iconData: Icons.home,
      title: 'Location',
      value: 'Cairo, Egypt',
    ),
  ];
  static List<DrawerItemModel> drawerItems = [
    DrawerItemModel(
      iconData: FontAwesomeIcons.house,
      text: 'HOME',
    ),
    DrawerItemModel(
      iconData: FontAwesomeIcons.solidUser,
      text: 'ABOUT',
    ),
    DrawerItemModel(
      iconData: FontAwesomeIcons.briefcase,
      text: 'SERVICES',
    ),
    DrawerItemModel(
      iconData: FontAwesomeIcons.listCheck,
      text: 'PROJECTS',
    ),
    DrawerItemModel(
      iconData: FontAwesomeIcons.idCard,
      text: 'CONTACT',
    ),
    DrawerItemModel(
      iconData: FontAwesomeIcons.solidBookmark,
      text: 'RESUME',
    ),
  ];
}
