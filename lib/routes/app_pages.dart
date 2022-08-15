import 'package:assesment/features/splash_screen/presentation/view/splash_screen_page.dart';
import 'package:assesment/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Routes.SPLASH_SCREEN,
      page: () => const SplashScreenPage(),
    ),
  ];
}
