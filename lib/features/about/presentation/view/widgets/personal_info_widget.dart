import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/size_config.dart';
import 'package:portfolio/features/about/presentation/view/widgets/title_value_widget.dart';

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < SizeConfig.tablet
        ? const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: TitleValueWidget(
                  title: 'Name : ',
                  value: 'Mina Emil',
                ),
              ),
              SizedBox(
                height: 5,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: TitleValueWidget(
                  title: 'Age : ',
                  value: '22',
                ),
              ),
              SizedBox(
                height: 5,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: TitleValueWidget(
                  title: 'Email : ',
                  value: 'mina.emil.fakhry@outlook.com',
                ),
              ),
              SizedBox(
                height: 5,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: TitleValueWidget(
                  title: 'From : ',
                  value: 'Cairo, Egypt',
                ),
              )
            ],
          )
        : const Row(
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
              ),
            ],
          );
  }
}
