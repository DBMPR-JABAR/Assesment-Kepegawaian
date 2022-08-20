import 'package:assesment/common/presentation/widgets/logo/app_logo.dart';
import 'package:assesment/features/splash_screen/presentation/controller/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenPage extends GetView<SplashScreenController> {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash_screen_bg.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: const [
            Align(
              alignment: Alignment.center,
              child: AppLogo(
                scale: 0.8,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
