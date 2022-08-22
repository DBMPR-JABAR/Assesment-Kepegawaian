import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScoreCarousel extends StatelessWidget {
  final String label;
  final String score;
  final Color borderColor;
  final Widget? trailing;

  const ScoreCarousel({
    Key? key,
    required this.label,
    required this.score,
    required this.borderColor,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Row(
        children: [
          Container(
            width: 8,
            height: double.infinity,
            color: borderColor,
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          label,
                          style: context.textTheme.subtitle1
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              score,
                              style: context.textTheme.headline3,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  trailing ?? Container(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
