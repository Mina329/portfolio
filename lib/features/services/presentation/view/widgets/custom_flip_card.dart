import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:portfolio/core/models/service_model.dart';
import 'package:portfolio/features/services/presentation/view/widgets/back_flip_card.dart';
import 'package:portfolio/features/services/presentation/view/widgets/front_flip_card.dart';

class CustomFlipCard extends StatelessWidget {
  final ServiceModel serviceModel;
  const CustomFlipCard({
    Key? key,
    required this.serviceModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      child: FlipCard(
        fill: Fill.fillBack,
        front: FrontFlipCard(serviceModel: serviceModel),
        back: BackFlipCard(serviceModel: serviceModel),
      ),
    );
  }
}
