import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/size_config.dart';

abstract class StylesManager {
  static TextStyle styleMedium18(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 18),
              fontWeight: FontWeight.w500,
            )
          : TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 18),
              fontWeight: FontWeight.w500,
            );
  static TextStyle styleMedium15(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 15),
              fontWeight: FontWeight.w500,
            )
          : TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 15),
              fontWeight: FontWeight.w500,
            );
  static TextStyle styleExtraLight18(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 18),
              fontWeight: FontWeight.w200,
            )
          : TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 18),
              fontWeight: FontWeight.w200,
            );
  static TextStyle styleExtraLight30(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 30),
              fontWeight: FontWeight.w200,
            )
          : TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 30),
              fontWeight: FontWeight.w200,
            );
  static TextStyle styleExtraLight60(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 60),
              fontWeight: FontWeight.w200,
            )
          : TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 60),
              fontWeight: FontWeight.w200,
            );
  static TextStyle styleLight20(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 20),
              fontWeight: FontWeight.w300,
            )
          : TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 20),
              fontWeight: FontWeight.w300,
            );
  static TextStyle styleMedium25(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 25),
              fontWeight: FontWeight.w500,
            )
          : TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 25),
              fontWeight: FontWeight.w500,
            );
  static TextStyle styleSemiBold25(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 25),
              fontWeight: FontWeight.w600,
            )
          : TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 25),
              fontWeight: FontWeight.w600,
            );
  static TextStyle styleBold100(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 100),
              fontWeight: FontWeight.w700,
            )
          : TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 100),
              fontWeight: FontWeight.w700,
            );
  static TextStyle styleSemiBold15(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 15),
              fontWeight: FontWeight.w800,
            )
          : TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 15),
              fontWeight: FontWeight.w800,
            );
  static TextStyle styleSemiBold18(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 18),
              fontWeight: FontWeight.w800,
            )
          : TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 18),
              fontWeight: FontWeight.w800,
            );
  static TextStyle styleDancingScript(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? TextStyle(
              fontFamily: 'DancingScript',
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 40),
              fontWeight: FontWeight.w900,
            )
          : TextStyle(
              fontFamily: 'DancingScript',
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 40),
              fontWeight: FontWeight.w900,
            );
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
