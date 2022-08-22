import 'package:assesment/features/dashboard/presentation/view/dashboard_page.dart';
import 'package:assesment/features/login/presentation/binding/login_binding.dart';
import 'package:assesment/features/login/presentation/view/login_page.dart';
import 'package:assesment/features/quiz/presentation/view/quiz_page.dart';
import 'package:assesment/features/splash_screen/presentation/binding/splash_screen_binding.dart';
import 'package:assesment/features/splash_screen/presentation/view/splash_screen_page.dart';
import 'package:assesment/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Routes.SPLASH_SCREEN,
      binding: SplashScreenBinding(),
      page: () => const SplashScreenPage(),
    ),
    GetPage(
      name: Routes.LOGIN,
      binding: LoginBinding(),
      page: () => const LoginPage(),
    ),
    GetPage(
      name: Routes.QUIZ,
      page: () => const QuizPage(),
    ),
    GetPage(
      name: Routes.DASHBOARD,
      page: () => const DashboardPage(),
    ),
  ];
}
