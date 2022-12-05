import 'dart:math';

import 'package:flutter/material.dart';
import 'package:grafik/home.dart';
import 'package:grafik/web/largeScreen.dart';
import 'package:grafik/web/mediumScreen.dart';
import 'package:grafik/web/responsive.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:grafik/web/smallScreen.dart';
import 'package:get/get.dart';
import 'mobil/mobileHomePage.dart';
import 'grafik.dart';
import 'dart:ui' as ui;

void main() {
  runApp(MyApp());
}

final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final double devicePixelRatio = ui.window.devicePixelRatio;
    final ui.Size size = ui.window.physicalSize;
    final double width = size.width;
    final double height = size.height;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: kIsWeb
            ? ResponsiveWidget(
                largeScreen: largeScreen(),
                mediumScreen: mediumScreen(),
                smallScreen: smallScreen())
            : mobile(),
      ),
    );
  }
}
