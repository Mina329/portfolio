import 'package:flutter/material.dart';
import 'package:portfolio/core/models/drawer_item_model.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/styles_manager.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.model,
    this.onPressed,
    this.resume,
  });
  final DrawerItemModel model;
  final void Function()? onPressed;
  final bool? resume;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: MaterialButton(
        onPressed: onPressed,
        hoverColor: Color.lerp(
          ColorsManager.primaryColor,
          Colors.transparent,
          0.5,
        ),
        shape: resume != null && resume == true
            ? RoundedRectangleBorder(
                side: const BorderSide(
                  color: ColorsManager.primaryColor,
                ),
                borderRadius: BorderRadius.circular(
                  3,
                ),
              )
            : null,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Icon(
                model.iconData,
                color: ColorsManager.primaryColor,
                size: getResponsiveFontSize(context, fontSize: 30),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                model.text,
                style: StylesManager.styleMedium15(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
