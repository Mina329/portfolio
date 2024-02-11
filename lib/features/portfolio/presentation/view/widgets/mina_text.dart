import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/styles_manager.dart';

class MinaText extends StatelessWidget {
  const MinaText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        'Mina',
        style: StylesManager.styleDancingScript(context),
      ),
    );
  }
}
