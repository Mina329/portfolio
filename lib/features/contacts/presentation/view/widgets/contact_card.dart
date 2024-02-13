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
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450, maxHeight: 300),
          child: Container(
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      contactModel.value,
                      overflow: TextOverflow.ellipsis,
                      style: StylesManager.styleExtraLight18(context),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
