import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';

class ThemeSwitch extends StatefulWidget {
  const ThemeSwitch({super.key});

  @override
  State<ThemeSwitch> createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  late bool dark;

  @override
  Widget build(BuildContext context) {
    dark = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 20),
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          setState(() {
            dark != dark;
            notifier.value = dark ? ThemeMode.light : ThemeMode.dark;
          });
        },
        child:
            dark ? const Icon(Icons.light_mode) : const Icon(Icons.dark_mode),
      ),
    );
  }
}
