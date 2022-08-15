import 'package:assesment/core_views/color/color_pallete.dart';
import 'package:assesment/core_views/color/color_scheme_light.dart';
import 'package:assesment/utils/color_utils.dart';
import 'package:flutter/material.dart';

abstract class TemanJabarTheme {
  static ThemeData light() {
    return ThemeData(
      unselectedWidgetColor: ColorUtils.fromHex(ColorPallete.gray_500),
      textTheme: _textLightTheme(),
      colorScheme: _colorLightScheme(),
      scaffoldBackgroundColor: Colors.white,
    );
  }

  static ColorScheme _colorLightScheme() {
    return const ColorScheme.light().copyWith(
      primary: TemanJabarColorSchemeLight.primaryColor,
      primaryContainer: TemanJabarColorSchemeLight.primaryVariantColor,
      secondary: TemanJabarColorSchemeLight.secondaryColor,
      secondaryContainer: TemanJabarColorSchemeLight.secondaryVariantColor,
      tertiary: TemanJabarColorSchemeLight.tertiaryColor,
      tertiaryContainer: TemanJabarColorSchemeLight.tertiaryVariantColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      error: TemanJabarColorSchemeLight.errorColor,
      onError: Colors.white,
    );
  }

  static TextTheme _textLightTheme() {
    return TextTheme(
      headline1: TextStyle(
        fontSize: 49.0,
        fontWeight: FontWeight.bold,
        color: TemanJabarColorSchemeLight.headerTextColor,
        fontFamily: "Lato",
        package: "core_views",
      ),
      headline2: TextStyle(
        fontSize: 41.0,
        fontWeight: FontWeight.bold,
        color: TemanJabarColorSchemeLight.headerTextColor,
        fontFamily: "Lato",
        package: "core_views",
      ),
      headline3: TextStyle(
        fontSize: 34.0,
        fontWeight: FontWeight.bold,
        color: TemanJabarColorSchemeLight.headerTextColor,
        fontFamily: "Lato",
        package: "core_views",
      ),
      headline4: TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
        color: TemanJabarColorSchemeLight.headerTextColor,
        fontFamily: "Lato",
        package: "core_views",
      ),
      headline5: TextStyle(
        fontSize: 23.0,
        fontWeight: FontWeight.bold,
        color: TemanJabarColorSchemeLight.headerTextColor,
        fontFamily: "Lato",
        package: "core_views",
      ),
      headline6: TextStyle(
        fontSize: 19.0,
        fontWeight: FontWeight.bold,
        color: TemanJabarColorSchemeLight.headerTextColor,
        fontFamily: "Lato",
        package: "core_views",
      ),
      subtitle1: TextStyle(
        fontSize: 16.0,
        color: TemanJabarColorSchemeLight.headerTextColor,
        fontFamily: "Lato",
        package: "core_views",
      ),
      subtitle2: TextStyle(
        fontSize: 13.0,
        color: TemanJabarColorSchemeLight.headerTextColor,
        fontFamily: "Lato",
        package: "core_views",
      ),
      bodyText1: TextStyle(
        fontSize: 16.0,
        color: TemanJabarColorSchemeLight.bodyTextColor,
        fontFamily: "Lato",
        package: "core_views",
      ),
      bodyText2: TextStyle(
        fontSize: 13.0,
        color: TemanJabarColorSchemeLight.bodyTextColor,
        fontFamily: "Lato",
        package: "core_views",
      ),
      button: TextStyle(
        fontSize: 13.0,
        fontWeight: FontWeight.w700,
        color: TemanJabarColorSchemeLight.primaryColor,
        fontFamily: "Lato",
        package: "core_views",
      ),
    );
  }
}
