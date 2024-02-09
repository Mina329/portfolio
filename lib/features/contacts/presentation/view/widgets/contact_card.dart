import 'package:flutter/material.dart';
import 'package:portfolio/core/models/contact_model.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.contactModel,
  });
  final ContactModel contactModel;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 450, maxHeight: 300),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Card(
          elevation: 20,
          surfaceTintColor: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                contactModel.iconData,
                color: ColorsManager.primaryColor,
                size: getResponsiveFontSize(context, fontSize: 100),
              ),
              Text(
                contactModel.title,
                style: StylesManager.styleSemiBold18(context),
              ),
              Text(
                contactModel.value,
                style: StylesManager.styleExtraLight18(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
