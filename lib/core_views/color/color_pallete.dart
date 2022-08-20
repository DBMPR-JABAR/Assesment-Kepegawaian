import 'dart:ui';

import '../../utils/color_utils.dart';

abstract class ColorPallete {
  static const String _blue_50 = "#E3F2FD";
  static const String _blue_100 = "#BBDEFB";
  static const String _blue_200 = "#90CAF9";
  static const String _blue_300 = "#64B5F6";
  static const String _blue_400 = "#42A5F5";
  static const String _blue_500 = "#2196F3";
  static const String _blue_600 = "#1E88E5";
  static const String _blue_700 = "#1976D2";
  static const String _blue_800 = "#1565C0";
  static const String _blue_900 = "#0D47A1";

  static const String _green_50 = "#E6F6EC";
  static const String _green_100 = "#C3E9D0";
  static const String _green_200 = "#9BDBB3";
  static const String _green_300 = "#70CD94";
  static const String _green_400 = "#4DC27E";
  static const String _green_500 = "#1FB767";
  static const String _green_600 = "#16A75C";
  static const String _green_700 = "#069550";
  static const String _green_800 = "#008444";
  static const String _green_900 = "#006430";

  static const String _yellow_50 = "#FFF9E1";
  static const String _yellow_100 = "#FFEEB4";
  static const String _yellow_200 = "#FFE483";
  static const String _yellow_300 = "#FFDA4F";
  static const String _yellow_400 = "#FFD026";
  static const String _yellow_500 = "#FFC800";
  static const String _yellow_600 = "#FFB900";
  static const String _yellow_700 = "#FFA600";
  static const String _yellow_800 = "#FF9500";
  static const String _yellow_900 = "#FF7500";

  static const String _red_50 = "#FFEBEE";
  static const String _red_100 = "#FFCDD2";
  static const String _red_200 = "#EF9A9A";
  static const String _red_300 = "#E57373";
  static const String _red_400 = "#EF5350";
  static const String _red_500 = "#F44336";
  static const String _red_600 = "#E53935";
  static const String _red_700 = "#D32F2F";
  static const String _red_800 = "#C62828";
  static const String _red_900 = "#B71B1C";

  static const String _gray_50 = "#FAFAFA";
  static const String _gray_100 = "#F5F5F5";
  static const String _gray_200 = "#EEEEEE";
  static const String _gray_300 = "#E0E0E0";
  static const String _gray_400 = "#BDBDBD";
  static const String _gray_500 = "#9E9E9E";
  static const String _gray_600 = "#757575";
  static const String _gray_700 = "#616161";
  static const String _gray_800 = "#424242";
  static const String _gray_900 = "#212121";

  static const String _blue_gray_50 = "#E3E7ED";
  static const String _blue_gray_100 = "#B9C3D3";
  static const String _blue_gray_200 = "#8D9DB5";
  static const String _blue_gray_300 = "#627798";
  static const String _blue_gray_400 = "#415C84";
  static const String _blue_gray_500 = "#1A4373";
  static const String _blue_gray_600 = "#133C6B";
  static const String _blue_gray_700 = "#083461";
  static const String _blue_gray_800 = "#022B55";
  static const String _blue_gray_900 = "#001B3D";

  static Color get blue_50 => ColorUtils.fromHex(_blue_50);

  static Color get blue_100 => ColorUtils.fromHex(_blue_100);

  static Color get blue_200 => ColorUtils.fromHex(_blue_200);

  static Color get blue_300 => ColorUtils.fromHex(_blue_300);

  static Color get blue_400 => ColorUtils.fromHex(_blue_400);

  static Color get blue_500 => ColorUtils.fromHex(_blue_500);

  static Color get blue_600 => ColorUtils.fromHex(_blue_600);

  static Color get blue_700 => ColorUtils.fromHex(_blue_700);

  static Color get blue_800 => ColorUtils.fromHex(_blue_800);

  static Color get blue_900 => ColorUtils.fromHex(_blue_900);

  static Color get green_50 => ColorUtils.fromHex(_green_50);

  static Color get green_100 => ColorUtils.fromHex(_green_100);

  static Color get green_200 => ColorUtils.fromHex(_green_200);

  static Color get green_300 => ColorUtils.fromHex(_green_300);

  static Color get green_400 => ColorUtils.fromHex(_green_400);

  static Color get green_500 => ColorUtils.fromHex(_green_500);

  static Color get green_600 => ColorUtils.fromHex(_green_600);

  static Color get green_700 => ColorUtils.fromHex(_green_700);

  static Color get green_800 => ColorUtils.fromHex(_green_800);

  static Color get green_900 => ColorUtils.fromHex(_green_900);

  static Color get yellow_50 => ColorUtils.fromHex(_yellow_50);

  static Color get yellow_100 => ColorUtils.fromHex(_yellow_100);

  static Color get yellow_200 => ColorUtils.fromHex(_yellow_200);

  static Color get yellow_300 => ColorUtils.fromHex(_yellow_300);

  static Color get yellow_400 => ColorUtils.fromHex(_yellow_400);

  static Color get yellow_500 => ColorUtils.fromHex(_yellow_500);

  static Color get yellow_600 => ColorUtils.fromHex(_yellow_600);

  static Color get yellow_700 => ColorUtils.fromHex(_yellow_700);

  static Color get yellow_800 => ColorUtils.fromHex(_yellow_800);

  static Color get yellow_900 => ColorUtils.fromHex(_yellow_900);

  static Color get red_50 => ColorUtils.fromHex(_red_50);

  static Color get red_100 => ColorUtils.fromHex(_red_100);

  static Color get red_200 => ColorUtils.fromHex(_red_200);

  static Color get red_300 => ColorUtils.fromHex(_red_300);

  static Color get red_400 => ColorUtils.fromHex(_red_400);

  static Color get red_500 => ColorUtils.fromHex(_red_500);

  static Color get red_600 => ColorUtils.fromHex(_red_600);

  static Color get red_700 => ColorUtils.fromHex(_red_700);

  static Color get red_800 => ColorUtils.fromHex(_red_800);

  static Color get red_900 => ColorUtils.fromHex(_red_900);

  static Color get gray_50 => ColorUtils.fromHex(_gray_50);

  static Color get gray_100 => ColorUtils.fromHex(_gray_100);

  static Color get gray_200 => ColorUtils.fromHex(_gray_200);

  static Color get gray_300 => ColorUtils.fromHex(_gray_300);

  static Color get gray_400 => ColorUtils.fromHex(_gray_400);

  static Color get gray_500 => ColorUtils.fromHex(_gray_500);

  static Color get gray_600 => ColorUtils.fromHex(_gray_600);

  static Color get gray_700 => ColorUtils.fromHex(_gray_700);

  static Color get gray_800 => ColorUtils.fromHex(_gray_800);

  static Color get gray_900 => ColorUtils.fromHex(_gray_900);

  static Color get blue_gray_50 => ColorUtils.fromHex(_blue_gray_50);

  static Color get blue_gray_100 => ColorUtils.fromHex(_blue_gray_100);

  static Color get blue_gray_200 => ColorUtils.fromHex(_blue_gray_200);

  static Color get blue_gray_300 => ColorUtils.fromHex(_blue_gray_300);

  static Color get blue_gray_400 => ColorUtils.fromHex(_blue_gray_400);

  static Color get blue_gray_500 => ColorUtils.fromHex(_blue_gray_500);

  static Color get blue_gray_600 => ColorUtils.fromHex(_blue_gray_600);

  static Color get blue_gray_700 => ColorUtils.fromHex(_blue_gray_700);

  static Color get blue_gray_800 => ColorUtils.fromHex(_blue_gray_800);

  static Color get blue_gray_900 => ColorUtils.fromHex(_blue_gray_900);
}
