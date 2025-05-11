import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:taejin/view/home_view.dart';

class IntroduceMyself extends StatelessWidget {
  const IntroduceMyself({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Apple SD Gothic Neo',
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Apple SD Gothic Neo',
            ),
      ),
      scrollBehavior: _AppScrollBehavior(),
      home: const HomeView(),
    );
  }
}

class _AppScrollBehavior extends MaterialScrollBehavior {
  @override
  // TODO: implement dragDevices
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
