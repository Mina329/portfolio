import 'package:flutter/material.dart';
import 'package:portfolio/core/models/project_model.dart';
import 'package:portfolio/core/utils/styles_manager.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/project_dialog_body.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/project_dialog_title.dart';
import 'package:portfolio/features/projects/presentation/view/widgets/project_media_page_view.dart';

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
    return GestureDetector(
      onTap: () => _showProjectDetailsDialog(context),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 450, maxHeight: 300),
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: MouseRegion(
            onEnter: (_) => _setHover(true),
            onExit: (_) => _setHover(false),
            child: Card(
              elevation: 20,
              surfaceTintColor: Colors.transparent,
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
      ),
    );
  }

  void _setHover(bool hover) {
    setState(() {
      isHover = hover;
    });
  }

  void _showProjectDetailsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Theme(
          data: ThemeData(
            dialogBackgroundColor:
                Theme.of(context).brightness == Brightness.dark
                    ? Colors.grey[900]
                    : Colors.white,
          ),
          child: Dialog(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.9,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 100),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ProjectDialogTitle(
                        widget: widget,
                        mainContext: context,
                      ),
                      const SizedBox(height: 10),
                      ProjectMediaPageView(
                        widget: widget,
                      ),
                      ProjectDialogBody(
                        widget: widget,
                        mainContext: context,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
