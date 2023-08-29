import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz_algo/question_controller.dart';

import 'package:quizz_algo/components/body.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          ElevatedButton(onPressed: controller.nextQuestion, child: const Text("Skip")),
        ],
      ),
      body: const Body(),
    );
  }
}
