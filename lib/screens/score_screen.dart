import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz_algo/constants.dart';
import 'package:quizz_algo/question_controller.dart';
import 'package:flutter_svg/svg.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/icons/score.jpg", fit: BoxFit.fill),
          Column(
            children: [
              const Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: kSecondaryColor),
              ),
              const Spacer(),
              Text(
                "${qnController.numOfCorrectAns * 10}/${qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: kSecondaryColor),
              ),
              const Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
