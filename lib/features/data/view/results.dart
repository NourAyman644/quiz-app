import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/core/utils/AppColors.dart';
import 'package:quiz_app/core/widget/custom_elvated_btn.dart';
import 'package:quiz_app/features/auth/presentation/screens/login_screen.dart';
import 'package:quiz_app/features/data/Controller/quiz_controller.dart';

import '../../../core/utils/AppAssets.dart';
import '../../../core/utils/AppStrings.dart';

class Results extends StatefulWidget {
  int result;
  Results({Key? key, required this.result}) : super(key: key);

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  QuizController controller = Get.find();
  AudioPlayer audioPlayer = AudioPlayer();
  void initState() {
    audioPlayer.play(AssetSource('sounds/crowd-cheer-ii-6263.wav'));
  }

  void dispose() {
    audioPlayer.stop();
    super.dispose();
  }

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
                height: 30,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    AppStrings.cong,
                    textStyle:
                        Theme.of(context).textTheme.displayLarge!.copyWith(
                              fontSize: 30,
                              color: AppColors.green,
                            ),
                    speed: const Duration(milliseconds: 200),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Your Score is \t ${widget.result} / 100',
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
