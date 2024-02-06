import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors_manager.dart';

abstract class ThemeManager {
  static ThemeData get lightThemeData => ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        buttonTheme: const ButtonThemeData(
          hoverColor: ColorsManager.primaryColor,
        ),
        // elevatedButtonTheme: const ElevatedButtonThemeData(
        //   style: ButtonStyle(
        //     overlayColor: MaterialStatePropertyAll(
        //       ColorManager.primaryColor,
        //     ),
        //     elevation: MaterialStatePropertyAll(0),
        //     shape: MaterialStatePropertyAll(
        //       RoundedRectangleBorder(
        //         borderRadius: BorderRadius.all(
        //           Radius.circular(3),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      );
  static ThemeData get darkThemeData => ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        buttonTheme: const ButtonThemeData(
          hoverColor: ColorsManager.primaryColor,
        ),
        // elevatedButtonTheme: const ElevatedButtonThemeData(
        //   style: ButtonStyle(
        //     overlayColor: MaterialStatePropertyAll(
        //       ColorManager.primaryColor,
        //     ),
        //     elevation: MaterialStatePropertyAll(0),
        //     shape: MaterialStatePropertyAll(
        //       RoundedRectangleBorder(
        //         borderRadius: BorderRadius.all(
        //           Radius.circular(3),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      );
}
