import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/data_repo.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/custom_drawer_item.dart';

class CustomDrawerItemsList extends StatelessWidget {
  const CustomDrawerItemsList({
    super.key,
    required this.functions,
  });

  final List<void Function()?> functions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...DataRepo.drawerItems
              .asMap()
              .entries
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: CustomDrawerItem(
                    model: e.value,
                    onPressed: functions[e.key],
                    resume: e.key == functions.length - 1,
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
