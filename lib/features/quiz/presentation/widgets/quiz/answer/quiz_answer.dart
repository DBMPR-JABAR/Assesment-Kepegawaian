import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizAnswer<T> extends StatelessWidget {
  final T value;
  final Widget child;
  final bool isSelected;

  const QuizAnswer({
    Key? key,
    required this.value,
    required this.child,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
