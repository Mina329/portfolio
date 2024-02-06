import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';

class MyResumeDesktopButton extends StatelessWidget {
  const MyResumeDesktopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 40,
        child: MaterialButton(
          onPressed: () {},
          hoverColor: const Color(0xffda8b82),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: ColorsManager.primaryColor,
            ),
            borderRadius: BorderRadius.circular(
              3,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Resume',
              style: StylesManager.styleSemiBold18(context),
            ),
          ),
        ),
      ),
    );
  }
}
