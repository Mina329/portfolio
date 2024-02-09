import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/models/service_model.dart';
import 'package:portfolio/core/utils/styles_manager.dart';

class FrontFlipCard extends StatelessWidget {
  const FrontFlipCard({
    super.key,
    required this.serviceModel,
  });

  final ServiceModel serviceModel;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
