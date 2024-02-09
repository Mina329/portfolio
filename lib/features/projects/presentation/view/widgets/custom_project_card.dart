import 'package:flutter/material.dart';
import 'package:portfolio/core/models/project_model.dart';
import 'package:portfolio/core/utils/styles_manager.dart';

class CustomProjectCard extends StatefulWidget {
  const CustomProjectCard({super.key, required this.projectModel});
  final ProjectModel projectModel;
  @override
  State<CustomProjectCard> createState() => _CustomProjectCardState();
}

class _CustomProjectCardState extends State<CustomProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 450, maxHeight: 300),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: MouseRegion(
          onEnter: (_) => _setHover(true),
          onExit: (_) => _setHover(false),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      widget.projectModel.icon == null
                          ? const SizedBox()
                          : ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth: getResponsiveFontSize(
                                  context,
                                  fontSize: 60,
                                ),
                                maxHeight: getResponsiveFontSize(
                                  context,
                                  fontSize: 60,
                                ),
                              ),
                              child: Image(
                                image: AssetImage(
                                  widget.projectModel.icon!,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                      Text(
                        widget.projectModel.name!,
                        textAlign: TextAlign.center,
                        style: StylesManager.styleSemiBold18(context),
                      ),
                      widget.projectModel.description == null
                          ? const SizedBox()
                          : Text(
                              widget.projectModel.description!,
                              textAlign: TextAlign.center,
                              style: StylesManager.styleExtraLight18(context),
                            ),
                    ],
                  ),
                  widget.projectModel.banner == null
                      ? const SizedBox()
                      : AnimatedOpacity(
                          duration: const Duration(milliseconds: 400),
                          opacity: isHover ? 0.0 : 1.0,
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              widget.projectModel.banner!,
                            ),
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

  void _setHover(bool hover) {
    setState(() {
      isHover = hover;
    });
  }
}
