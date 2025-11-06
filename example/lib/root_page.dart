import 'package:flutter/material.dart';
import 'package:hondooye_sizer/hondooye_sizer.dart';
import 'home_page.dart';
import 'splash_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  late Future<bool> appInit;

  @override
  void initState() {
    super.initState();
    appInit = appInitialize(context: context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: appInit,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const SplashPage();
            } else if (snapshot.hasError) {
              return Container();
            } else if (snapshot.hasData) {
              if (snapshot.data == true) {
                return const HomePage();
              }
              return Container();
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}

Future<bool> appInitialize({required BuildContext context}) async {
  Sizer.init(standardLogicalWidth: 420, standardLogicalHeight: 920);
  await Future.delayed(const Duration(milliseconds: 1000), () {});
  return true;
}
