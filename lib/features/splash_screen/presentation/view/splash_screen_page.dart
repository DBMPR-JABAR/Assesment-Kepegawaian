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
          children: [
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/logo_temanjabar.png",
                    width: 58,
                    height: 80,
                  ),
                  const SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ASSESMENT",
                        style: context.textTheme.headline5
                            ?.copyWith(fontFamily: "Intro"),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Sistem Assesment Kepegawaian",
                        style: context.textTheme.bodyText2
                            ?.copyWith(fontFamily: "Intro"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
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
