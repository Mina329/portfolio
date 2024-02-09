import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class HireMeButton extends StatelessWidget {
  const HireMeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: () async {
          var whatsappUrl = 'https://api.whatsapp.com/send?phone=201280080910';
          if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
            await launchUrl(Uri.parse(whatsappUrl));
          }
        },
        color: ColorsManager.primaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Hire ME',
              style: StylesManager.styleMedium18(context)
                  .copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
