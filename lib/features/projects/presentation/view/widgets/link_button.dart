import 'package:flutter/material.dart';
import 'package:portfolio/core/models/links_model.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({
    super.key,
    required this.mainContext,
    required this.linksModel,
  });

  final BuildContext mainContext;
  final LinksModel linksModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: MaterialButton(
        onPressed: () async {
          if (await canLaunchUrl(Uri.parse(linksModel.link))) {
            await launchUrl(Uri.parse(linksModel.link));
          }
        },
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: ColorsManager.primaryColor,
          ),
          borderRadius: BorderRadius.circular(
            3,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  linksModel.iconData,
                  size: getResponsiveFontSize(
                    mainContext,
                    fontSize: 30,
                  ),
                  color: Theme.of(mainContext).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      linksModel.text,
                      style: StylesManager.styleExtraLight18(mainContext),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
