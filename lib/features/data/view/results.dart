import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/core/widget/custom_elvated_btn.dart';
import 'package:quiz_app/features/auth/presentation/screens/login_screen.dart';
import 'package:quiz_app/features/data/Controller/quiz_controller.dart';

import '../../../core/utils/AppAssets.dart';
import '../../../core/utils/AppStrings.dart';

class Results extends StatelessWidget {
  Results({Key? key}) : super(key: key);
  @override
  QuizController controller = Get.find();
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
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Lottie.asset(
                  AppAssets.done,
                  height: 300,
                  width: 300,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Your Score',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 30,
                    ),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomElvatedBtn(
                text: AppStrings.again,
                onpressed: () {
                  controller.Reset();
                  Get.off(LoginScreen());
                },
                width: 200,
              ),
            ],
          )
        ],
      ),
    );
  }
}
