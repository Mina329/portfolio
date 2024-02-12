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
    return Card(
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
