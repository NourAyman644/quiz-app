import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/data/Controller/quiz_controller.dart';
import '../utils/AppColors.dart';
import 'custom_elvated_btn.dart';

class QuestionCard extends StatelessWidget {
  QuestionCard({
    super.key,
  });

  @override
  QuizController controller = Get.put(QuizController());
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22),
      padding: const EdgeInsets.all(15),
      height: 390,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
      ),
      child: GetBuilder<QuizController>(builder: (controller) {
        return Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              controller.quiz[controller.ind].question,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: AppColors.txt_black,
                    fontSize: 28,
                  ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return CustomElvatedBtn(
                    text: controller.quiz[controller.ind].answers[index],
                    onpressed: () {
                      controller.changeIndex(index);
                    },
                    color: controller.Color == true &&
                            controller.quiz[controller.ind].answers[index] ==
                                controller.quiz[controller.ind].correct
                        ? AppColors.green
                        : AppColors.cl,
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
