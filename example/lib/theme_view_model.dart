import 'package:flutter/material.dart';
import 'package:hondooye_design_system/hondooye_design_system.dart';

class ThemeViewModel extends InheritedWidget {
  ThemeViewModel({super.key, required Widget child}) : super(child: child);
  final ValueNotifier<ThemeData> theme = ValueNotifier(HdyLightTheme.themeData);

  void setLightMode() {
    theme.value = HdyLightTheme.themeData;
  }

  void setDarkMode() {
    theme.value = HdyDarkTheme.themeData;
  }

  static ThemeViewModel? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ThemeViewModel>();

  void updateTheme(ThemeData theme) => this.theme.value = theme;

  @override
  bool updateShouldNotify(ThemeViewModel oldWidget) => oldWidget.theme != theme;
}