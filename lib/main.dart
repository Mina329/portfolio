import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/themes_manager.dart';
import 'package:portfolio/features/portfolio/presentation/view/portfolio_view.dart';

final ValueNotifier<ThemeMode> notifier = ValueNotifier(ThemeMode.dark);
void main() {
  runApp(const Portfolio());
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
