import 'package:assesment/common/presentation/widget/app_bar/app_bar_builder.dart';
import 'package:assesment/common/presentation/widget/quiz/answer/quiz_answer.dart';
import 'package:assesment/common/presentation/widget/quiz/question/quiz_question.dart';
import 'package:assesment/common/presentation/widget/quiz/quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarBuilder.create(
          context: context, label: "Kuis", isWhiteBackground: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildNumberOfQuizAndTime(context),
            _buildProgressBar(context),
            _buildQuestion(context),
          ],
        ),
      ),
    );
  }

  Widget _buildNumberOfQuizAndTime(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pertanyaan",
                style: context.textTheme.bodyText2
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "1/50",
                style: context.textTheme.bodyText2
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: context.theme.colorScheme.tertiary.withAlpha(50)),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/svg/ic_clock.svg",
                  height: 16,
                  width: 16,
                  color: context.theme.colorScheme.tertiary,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "59:59",
                  style: context.textTheme.bodyText2?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.theme.colorScheme.tertiary,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressBar(BuildContext context) {
    return LinearProgressIndicator(
      value: 1 / 50,
      backgroundColor: context.theme.colorScheme.primary.withAlpha(100),
      color: context.theme.colorScheme.primary,
      minHeight: 6,
    );
  }

  Widget _buildQuestion(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Quiz<String>(
        value: "Satu",
        question: QuizQuestion(
          no: 1,
          question: "Pertanyaan",
        ),
        items: [
          QuizAnswer(
            value: "Satu",
            child: Text(
              "Satu",
              textAlign: TextAlign.justify,
              style: context.textTheme.bodyText1,
            ),
          ),
          QuizAnswer(
            value: "Dua",
            child: Text(
              "Dua",
              textAlign: TextAlign.justify,
              style: context.textTheme.bodyText1,
            ),
          ),
          QuizAnswer(
            value: "Tiga",
            child: Text(
              "Tiga",
              textAlign: TextAlign.justify,
              style: context.textTheme.bodyText1,
            ),
          ),
          QuizAnswer(
            value: "Empat",
            child: Text(
              "Empat",
              textAlign: TextAlign.justify,
              style: context.textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
