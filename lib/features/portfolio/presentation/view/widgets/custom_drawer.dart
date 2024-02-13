import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/colors_manager.dart';
import 'package:portfolio/core/utils/size_config.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/custom_drawer_items_list.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/mina_text.dart';
import 'package:portfolio/features/portfolio/presentation/view/widgets/tablet_mobile_theme_switch.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key, required this.functions});
  final List<void Function()?> functions;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width > SizeConfig.tablet
          ? MediaQuery.of(context).size.width * 0.4
          : MediaQuery.of(context).size.width * 0.6,
      color: Theme.of(context).brightness == Brightness.dark
          ? ColorsManager.drawerColor
          : Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
              child: SizedBox(
            height: 50,
          )),
          const SliverToBoxAdapter(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: MinaText(),
            ),
          ),
          const SliverToBoxAdapter(
            child: Divider(),
          ),
          const SliverToBoxAdapter(
            child: TabletMobileThemeSwitch(),
          ),
          const SliverToBoxAdapter(
            child: Divider(),
          ),
          SliverToBoxAdapter(
            child: CustomDrawerItemsList(functions: functions),
          )
        ],
      ),
    );
  }
}
