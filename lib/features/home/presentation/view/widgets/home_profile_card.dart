import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/view/widgets/name_widget.dart';
import 'package:portfolio/features/home/presentation/view/widgets/role_typing_widget.dart';
import 'package:portfolio/features/home/presentation/view/widgets/social_media_list_widget.dart';
import 'package:portfolio/features/home/presentation/view/widgets/welcome_widget.dart';

class HomeProfileCard extends StatelessWidget {
  const HomeProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: WelcomeWidget(),
        ),
        SizedBox(
          height: 20,
        ),
        Flexible(
          child: NameWidget(),
        ),
        Flexible(
          child: RoleTypingWidget(),
        ),
        SizedBox(
          height: 20,
        ),
        Flexible(
          child: SocialMediaListWidget(),
        ),
      ],
    );
  }
}
