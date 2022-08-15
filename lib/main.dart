import 'package:assesment/core_views/theme/app_theme.dart';
import 'package:assesment/routes/app_pages.dart';
import 'package:assesment/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assesment Kepegawaian',
      theme: TemanJabarTheme.light(),
      initialRoute: Routes.SPLASH_SCREEN,
      getPages: AppPages.routes,
    );
  }
}
