import 'package:assesment/core_views/color/color_pallete.dart';
import 'package:assesment/core_views/color/color_scheme_light.dart';
import 'package:assesment/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AppBarBuilder {
  AppBarBuilder._();

  static AppBar create({
    required BuildContext context,
    required String label,
    bool isWhiteBackground = false,
    bool isEnableBackButton = true,
    Widget? endWidget,
  }) {
    return AppBar(
      systemOverlayStyle: isWhiteBackground
          ? const SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.dark,
            )
          : SystemUiOverlayStyle(
              statusBarColor: TemanJabarColorSchemeLight.primaryVariantColor,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.light,
            ),
      backgroundColor: isWhiteBackground
          ? Colors.white
          : TemanJabarColorSchemeLight.primaryColor,
      elevation: 0,
      flexibleSpace: Padding(
        padding: EdgeInsets.only(top: context.mediaQueryViewPadding.top),
        child: Stack(
          children: [
            isEnableBackButton && Navigator.canPop(context)
                ? Container(
                    margin: const EdgeInsets.only(left: 8),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Material(
                      color: Colors.transparent,
                      shape: const CircleBorder(),
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        customBorder: const CircleBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: SvgPicture.asset(
                            "assets/svg/ic_chevron_left.svg",
                            height: 24,
                            width: 24,
                            color: isWhiteBackground
                                ? ColorPallete.gray_900
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(),
            Align(
              alignment: Alignment.center,
              child: Text(
                label,
                style: isWhiteBackground
                    ? context.textTheme.headline5
                    : context.textTheme.headline5
                        ?.copyWith(color: Colors.white),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: endWidget ?? Container(),
            )
          ],
        ),
      ),
    );
  }
}
