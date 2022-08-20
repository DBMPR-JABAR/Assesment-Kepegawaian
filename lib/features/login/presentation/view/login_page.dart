import 'package:assesment/common/presentation/widget/logo/app_logo.dart';
import 'package:assesment/common/presentation/widget/button/contained_button.dart';
import 'package:assesment/common/presentation/widget/text_input/label_outlined_text_input.dart';
import 'package:assesment/core_views/color/color_pallete.dart';
import 'package:assesment/core_views/color/color_scheme_light.dart';
import 'package:assesment/features/login/presentation/controller/login_controller.dart';
import 'package:assesment/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/login_bg.png",
            fit: BoxFit.fill,
            width: Get.width,
            height: Get.height,
          ),
          Container(
            margin: EdgeInsets.only(
              top: Get.height * .15,
              left: 32,
              right: 32,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Selamat Datang!",
                    style: context.textTheme.headline3?.copyWith(
                      fontFamily: "Intro",
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Silahkan login untuk melanjutkan",
                    style: context.textTheme.bodyText2?.copyWith(
                      fontFamily: "Intro",
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.7,
            minChildSize: 0.7,
            snap: true,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16),
                    ),
                    color: Colors.white),
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 55,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorPallete.gray_300,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const AppLogo(
                        scale: 0.5,
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: const LabelOutlinedTextInput(
                          label: "NIP/NIK",
                          hint: "Masukkan NIP/NIK",
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: const LabelOutlinedTextInput(
                          label: "Password",
                          hint: "Masukkan Password",
                          isObscure: true,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: ContainedButton(
                          label: "Login",
                          isFullWidth: true,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Text(
                "Dinas Bina Marga & Penataan Ruang\nProvinsi Jawa Barat",
                textAlign: TextAlign.center,
                style: context.textTheme.bodyText2?.copyWith(
                  fontFamily: "Intro",
                  fontSize: 11,
                  height: 1.25,
                  color: TemanJabarColorSchemeLight.disabledTextColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
