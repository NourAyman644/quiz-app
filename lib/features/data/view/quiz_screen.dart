import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/core/widget/custom_elvated_btn.dart';
import 'package:quiz_app/core/widget/question_card.dart';

import '../../../core/utils/AppAssets.dart';
import '../../../core/utils/AppColors.dart';
import '../../../core/utils/AppStrings.dart';
import '../Controller/quiz_controller.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen({Key? key}) : super(key: key);

  @override
  QuizController controller = Get.put(QuizController());
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Lottie.asset(
          AppAssets.galaxy,
          fit: BoxFit.fill,
          height: double.infinity,
        ),
        Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: AppColors.cl,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GetBuilder<QuizController>(builder: (controller) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          AppStrings.Question,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 30,
                              ),
                        ),
                        Text(
                          controller.ind.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 30,
                              ),
                        ),
                        Text(
                          '/',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 22,
                              ),
                        ),
                        Text(
                          '10',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                fontSize: 22,
                              ),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Lottie.asset(AppAssets.qa, height: 150, width: 150),
            ),
            const SizedBox(
              height: 20,
            ),
            QuestionCard(),
          ],
        )
      ],
    ));
  }
}
