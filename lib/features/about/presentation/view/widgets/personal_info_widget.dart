import 'package:flutter/material.dart';
import 'package:portfolio/features/about/presentation/view/widgets/title_value_widget.dart';

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleValueWidget(
              title: 'Name : ',
              value: 'Mina Emil',
            ),
            TitleValueWidget(
              title: 'Age : ',
              value: '22',
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleValueWidget(
              title: 'Email : ',
              value: 'mina.emil.fakhry@outlook.com',
            ),
            TitleValueWidget(
              title: 'From : ',
              value: 'Cairo, Egypt',
            )
          ],
        )
      ],
    );
  }
}
