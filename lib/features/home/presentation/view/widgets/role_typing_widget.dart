import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/features/home/presentation/view/widgets/typing_text_animation.dart';

class RoleTypingWidget extends StatelessWidget {
  const RoleTypingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const FittedBox(
          fit: BoxFit.scaleDown,
          child: Icon(
            Icons.play_arrow_rounded,
            color: ColorsManager.primaryColor,
          ),
        ),
        TypingTextAnimation(
          texts: const ['Flutter Developer', 'AI Developer'],
          textStyle: StylesManager.styleExtraLight30(context),
          duration: const Duration(seconds: 3),
          pauseBetween: const Duration(seconds: 1),
        )
      ],
    );
  }
}
