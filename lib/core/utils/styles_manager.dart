import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/utils/size_config.dart';

abstract class StylesManager {
  static TextStyle styleMedium18(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? GoogleFonts.poppins(
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 18),
              fontWeight: FontWeight.w500,
            )
          : GoogleFonts.poppins(
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 18),
              fontWeight: FontWeight.w500,
            );

  static TextStyle styleExtraLight30(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? GoogleFonts.poppins(
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 30),
              fontWeight: FontWeight.w200,
            )
          : GoogleFonts.poppins(
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 30),
              fontWeight: FontWeight.w200,
            );
  static TextStyle styleBold100(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? GoogleFonts.poppins(
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 100),
              fontWeight: FontWeight.w700,
            )
          : GoogleFonts.poppins(
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 100),
              fontWeight: FontWeight.w700,
            );
  static TextStyle styleSemiBold18(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? GoogleFonts.poppins(
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 18),
              fontWeight: FontWeight.w800,
            )
          : GoogleFonts.poppins(
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 18),
              fontWeight: FontWeight.w800,
            );
  static TextStyle styleDancingScript(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? GoogleFonts.dancingScript(
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 50),
              fontWeight: FontWeight.w900,
            )
          : GoogleFonts.dancingScript(
              color: Colors.black,
              fontSize: getResponsiveFontSize(context, fontSize: 50),
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
