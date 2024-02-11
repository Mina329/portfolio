import 'package:flutter/material.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/myresume_desktop_button.dart';
import 'package:url_launcher/url_launcher.dart';

class MyCVsWidget extends StatelessWidget {
  const MyCVsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyResumeDesktopButton(
          text: "Flutter CV",
          onPressed: () async {
            var url =
                'https://drive.google.com/file/d/1QkMrRmvHsz8fcfPE5EGhd2b-hSyROzpe/view?usp=drive_link';
            await launchUrl(Uri.parse(url));
          },
        ),
        const SizedBox(
          width: 20,
        ),
        MyResumeDesktopButton(
          text: "AI CV",
          onPressed: () async {
            var url =
                'https://drive.google.com/file/d/1T3q3Bos9cjr6_By0k48ss9WiWJfnLqn3/view?usp=drive_link';
            await launchUrl(Uri.parse(url));
          },
        ),
      ],
    );
  }
}
