import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz_algo/constants.dart';
import 'package:quizz_algo/question_controller.dart';
import 'package:flutter_svg/svg.dart';

import 'progress_bar.dart';
import 'question_card.dart';

class Body extends StatelessWidget {
  const Body({super.key,

  });

  @override
  Widget build(BuildContext context) {

    QuestionController questionController = Get.put(QuestionController());
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset("assets/icons/23982.jpg", fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              const SizedBox(height: kDefaultPadding),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Question ${questionController.questionNumber.value}",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: kSecondaryColor),
                      children: [
                        TextSpan(
                          text: "/${questionController.questions.length}",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(color: kSecondaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(thickness: 1.5),
              const SizedBox(height: kDefaultPadding),
              Expanded(
                child: PageView.builder(
                  // Block swipe to next qn
                  physics: const NeverScrollableScrollPhysics(),
                  controller: questionController.pageController,
                  onPageChanged: questionController.updateTheQnNum,
                  itemCount: questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                      question: questionController.questions[index]),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
