import 'package:assesment/common/presentation/widget/quiz/answer/quiz_answer.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Quiz<T> extends StatelessWidget {
  final Widget question;
  final T? value;
  final String? alphaOrderIndexValue;
  final List<QuizAnswer<T>> items;
  final void Function(String alphaOrder, T value)? onChanged;

  Quiz({
    Key? key,
    required this.question,
    this.value,
    this.alphaOrderIndexValue,
    required this.items,
    this.onChanged,
  }) : super(key: key) {
    if (value != null && alphaOrderIndexValue != null) {
      throw ArgumentError(
          "Cannot have value on both value and alphabet order index value, please specify exactly one of them");
    }

    if (value != null) {
      final isValueExist = items.map((e) => e.value).contains(value);
      if (!isValueExist) {
        throw ArgumentError(
            "Value $value does not exist in list items QuizAnswers<${value.runtimeType}>");
      }
    }

    if (alphaOrderIndexValue != null) {
      final isAlphaOrderValueExist = items
          .mapIndexed((i, e) => String.fromCharCode(65 + i))
          .contains(alphaOrderIndexValue);
      if (!isAlphaOrderValueExist) {
        throw ArgumentError(
            "Alphabet order index $alphaOrderIndexValue does not exist in list items QuizAnswers<${value.runtimeType}>");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        question,
        const SizedBox(
          height: 32,
        ),
        ...items.mapIndexed((i, e) {
          final alphaOrderValue = String.fromCharCode(65 + i);
          return Container(
            margin: EdgeInsets.only(top: i != 0 ? 16 : 0),
            child: InkWell(
              borderRadius: BorderRadius.circular(8),
              onTap: () {
                onChanged?.call(String.fromCharCode(65 + i), e.value);
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: (value == e.value ||
                          alphaOrderValue == this.alphaOrderIndexValue)
                      ? Border.all(
                          color: context.theme.colorScheme.primary, width: 2)
                      : Border.all(color: Colors.black, width: 1),
                  color: (value == e.value ||
                          alphaOrderValue == this.alphaOrderIndexValue)
                      ? context.theme.colorScheme.primary.withAlpha(100)
                      : null,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$alphaOrderValue. ",
                      textAlign: TextAlign.justify,
                      style: context.textTheme.bodyText1,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: e,
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList()
      ],
    );
  }
}
