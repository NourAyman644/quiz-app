import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/core/utils/AppColors.dart';
import 'package:quiz_app/core/utils/AppStrings.dart';
import 'package:quiz_app/core/utils/commons.dart';
import 'package:quiz_app/core/widget/custom_elvated_btn.dart';

import '../../../../core/routes/app_route.dart';
import '../../../../core/utils/AppAssets.dart';
import 'package:get_it/get_it.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
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
                height: 100,
              ),
              Center(
                child: Lottie.asset(
                  AppAssets.man,
                  height: 280,
                  width: 300,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText(
                    AppStrings.welcome,
                    textStyle:
                        Theme.of(context).textTheme.displayLarge!.copyWith(
                              color: AppColors.blue,
                              fontSize: 36,
                            ),
                  ),
                ],
                isRepeatingAnimation: true,
              ),
              const SizedBox(
                height: 38,
              ),
              Text(AppStrings.quiz,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 30,
                      )),
              const SizedBox(
                height: 38,
              ),
              CustomElvatedBtn(
                  text: AppStrings.startQuiz,
                  color: AppColors.blue,
                  width: 250,
                  onpressed: () {
                    Navigate(context: context, routeName: Routes.Ready);
                  }),
            ],
          )
        ],
      ),
    );
  }
}
