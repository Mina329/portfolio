import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomFlipCard extends StatelessWidget {
  final String assetImage;
  final String cardName;
  final List<String> backSideTexts;

  const CustomFlipCard({
    Key? key,
    required this.assetImage,
    required this.cardName,
    required this.backSideTexts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: FlipCard(
        fill: Fill.fillBack,
        front: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  assetImage,
                  height: 100,
                ),
                Text(
                  cardName,
                  textAlign: TextAlign.center,
                  style: StylesManager.styleMedium18(context),
                ),
              ],
            ),
          ),
        ),
        back: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ...backSideTexts
                    .map(
                      (text) => FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          text,
                          style: StylesManager.styleExtraLight18(context),
                        ),
                      ),
                    )
                    .toList(),
                const Spacer(),
                Center(
                  child: MaterialButton(
                    onPressed: () async {
                      var whatsappUrl = 'https://api.whatsapp.com/send?phone=201280080910';
                      if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
                        await launchUrl(Uri.parse(whatsappUrl));
                      }
                    },
                    color: ColorsManager.primaryColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
