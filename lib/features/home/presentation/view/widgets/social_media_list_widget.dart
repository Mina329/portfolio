import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/features/home/presentation/view/widgets/social_button.dart';

class SocialMediaListWidget extends StatelessWidget {
  const SocialMediaListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: SocialButton(
            icon: FontAwesomeIcons.facebook,
            onPressed: () {},
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: SocialButton(
            icon: FontAwesomeIcons.github,
            onPressed: () {},
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: SocialButton(
            icon: FontAwesomeIcons.linkedin,
            onPressed: () {},
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: SocialButton(
            icon: FontAwesomeIcons.instagram,
            onPressed: () {},
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: SocialButton(
            icon: FontAwesomeIcons.kaggle,
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
