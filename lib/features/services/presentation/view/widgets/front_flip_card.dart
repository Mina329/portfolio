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
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.grey[900]
            : Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(100),
            blurRadius: 12.0,
            offset: const Offset(0.0, 0.0),
          )
        ],
      ),
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
