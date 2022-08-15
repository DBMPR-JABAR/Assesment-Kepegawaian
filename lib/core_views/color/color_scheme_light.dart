import 'dart:ui';

import 'package:assesment/utils/color_utils.dart';

import './color_pallete.dart';

abstract class TemanJabarColorSchemeLight {
  static Color get primaryColor => ColorUtils.fromHex(ColorPallete.green_600);

  static Color get primaryVariantColor =>
      ColorUtils.fromHex(ColorPallete.green_800);

  static Color get secondaryColor =>
      ColorUtils.fromHex(ColorPallete.yellow_400);

  static Color get secondaryVariantColor =>
      ColorUtils.fromHex(ColorPallete.yellow_600);

  static Color get tertiaryColor => ColorUtils.fromHex(ColorPallete.blue_600);

  static Color get tertiaryVariantColor =>
      ColorUtils.fromHex(ColorPallete.blue_800);

  static Color get activeColor => ColorUtils.fromHex(ColorPallete.green_700);

  static Color get errorColor => ColorUtils.fromHex(ColorPallete.red_700);

  static Color get warningColor => ColorUtils.fromHex(ColorPallete.yellow_700);

  static Color get headerTextColor => ColorUtils.fromHex(ColorPallete.gray_900);

  static Color get headerTextSecondaryColor =>
      ColorUtils.fromHex(ColorPallete.blue_gray_900);

  static Color get bodyTextColor => ColorUtils.fromHex(ColorPallete.gray_800);

  static Color get bodyTextSecondaryColor =>
      ColorUtils.fromHex(ColorPallete.gray_700);

  static Color get disabledTextColor =>
      ColorUtils.fromHex(ColorPallete.gray_600);

  static Color get borderColor => ColorUtils.fromHex(ColorPallete.gray_400);

  static Color get inputFillColor => ColorUtils.fromHex(ColorPallete.gray_100);
}
