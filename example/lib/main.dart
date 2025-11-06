import 'package:example/root_page.dart';
import 'package:example/theme_view_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ThemeViewModel(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ThemeViewModel.of(context)!.theme,
      builder: (BuildContext context, ThemeData themeData, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Hondooye Package Test App',
          theme: themeData,
          home: const RootPage(),
        );
      },
    );
  }
}