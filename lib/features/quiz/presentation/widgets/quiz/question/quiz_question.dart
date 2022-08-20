import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizQuestion extends StatelessWidget {
  final int no;
  final String question;

  const QuizQuestion({Key? key, required this.no, required this.question})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$no. $question",
      textAlign: TextAlign.justify,
      style: context.textTheme.bodyText1,
    );
  }
}
