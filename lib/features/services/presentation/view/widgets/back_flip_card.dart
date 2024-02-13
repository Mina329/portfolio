import 'package:flutter/material.dart';
import 'package:portfolio/core/models/service_model.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/features/services/presentation/view/widgets/hire_me_button.dart';

class BackFlipCard extends StatelessWidget {
  const BackFlipCard({
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...serviceModel.services
                .map(
                  (text) => Text(
                    text,
                    style: StylesManager.styleExtraLight18(context),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
                .toList(),
            const Spacer(),
            const HireMeButton()
          ],
        ),
      ),
    );
  }
}
