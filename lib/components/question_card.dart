import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz_algo/question_controller.dart';
import 'package:quizz_algo/models/questions_model.dart';

import '../../../constants.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key,


    required this.question,
  }) ;

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.put(QuestionController());
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: const EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Text(
              question.question,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: kBlackColor),
            ),
            const SizedBox(height: kDefaultPadding / 2),
            ...List.generate(
              question.options.length,
              (index) => Option(
                index: index,
                text: question.options[index],
                press: () => controller.checkAns(question, index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
