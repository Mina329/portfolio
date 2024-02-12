import 'dart:io';

import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/themes_manager.dart';
import 'package:portfolio/features/portfolio/presentation/view/portfolio_view.dart';
import 'package:window_manager/window_manager.dart';

final ValueNotifier<ThemeMode> notifier = ValueNotifier(ThemeMode.dark);
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
      await windowManager.ensureInitialized();
      await windowManager.setMinimumSize(
        const Size(300, 600),
      );
    }
  } catch (e) {}

  runApp(
    const Portfolio(),
  );
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: notifier,
      builder: (context, value, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const PortfolioView(),
          theme: ThemeManager.lightThemeData,
          darkTheme: ThemeManager.darkThemeData,
          themeMode: value,
        );
      },
    );
  }
}
