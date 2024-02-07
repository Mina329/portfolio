import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/styles_manager.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        'Mina Emil',
        style: StylesManager.styleBold100(context),
      ),
    );
  }
}
