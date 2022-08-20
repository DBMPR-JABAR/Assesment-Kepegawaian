import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLogo extends StatelessWidget {
  final double scale;

  const AppLogo({Key? key, this.scale = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.asset(
          "assets/images/logo_temanjabar.png",
          width: 78 * scale,
          height: 100 * scale,
        ),
        SizedBox(
          height: 80 * scale,
          child: VerticalDivider(
            thickness: 2 * scale,
            color: Colors.black,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ASSESMENT",
              style: context.textTheme.headline5?.copyWith(
                  fontFamily: "Intro",
                  fontSize:
                      (context.textTheme.headline5?.fontSize ?? 23) * scale),
            ),
            SizedBox(
              height: 6 * scale,
            ),
            Text(
              "Sistem Penilaian\nKepegawaian",
              style: context.textTheme.bodyText2?.copyWith(
                  fontFamily: "Intro",
                  fontWeight: FontWeight.w400,
                  fontSize:
                      (context.textTheme.headline6?.fontSize ?? 13) * scale),
            ),
          ],
        ),
      ],
    );
  }
}
