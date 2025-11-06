import 'package:flutter/material.dart';

class ThemeViewModel extends InheritedWidget {
  ThemeViewModel({super.key, required super.child});
  final ValueNotifier<ThemeData> theme = ValueNotifier(ThemeData.light());

  void setLightMode() {
    theme.value = ThemeData.light();
  }

  void setDarkMode() {
    theme.value = ThemeData.dark();
  }

  static ThemeViewModel? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ThemeViewModel>();

  void updateTheme(ThemeData theme) => this.theme.value = theme;

  @override
  bool updateShouldNotify(ThemeViewModel oldWidget) => oldWidget.theme != theme;
}