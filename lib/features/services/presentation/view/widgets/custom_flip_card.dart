import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/models/service_model.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomFlipCard extends StatelessWidget {
  final ServiceModel serviceModel;
  const CustomFlipCard({
    Key? key,
    required this.serviceModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 300, maxWidth: 300),
      child: AspectRatio(
        aspectRatio: 1,
        child: FlipCard(
          fill: Fill.fillBack,
          front: Card(
            elevation: 20,
            surfaceTintColor: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                SvgPicture.asset(
                  serviceModel.serviceIcon,
                  height: 100,
                ),
                Text(
                  serviceModel.serviceTitle,
                  textAlign: TextAlign.center,
                  style: StylesManager.styleMedium18(context),
                ),
                const SizedBox(),
              ],
            ),
          ),
          back: Card(
            elevation: 20,
            surfaceTintColor: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ...serviceModel.services
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
                        var whatsappUrl =
                            'https://api.whatsapp.com/send?phone=201280080910';
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
      ),
    );
  }
}
