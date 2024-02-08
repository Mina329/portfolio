import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/styles_manager.dart';

class TitleValueWidget extends StatelessWidget {
  const TitleValueWidget({
    super.key,
    required this.title,
    required this.value,
  });
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: StylesManager.styleSemiBold18(context),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            value,
            style: StylesManager.styleMedium18(context),
          ),
        ),
      ],
    );
  }
}
