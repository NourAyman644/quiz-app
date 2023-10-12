import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/core/utils/AppAssets.dart';
import 'package:quiz_app/core/utils/commons.dart';

import '../../../../core/routes/app_route.dart';

class ReadyScreen extends StatefulWidget {
  const ReadyScreen({Key? key}) : super(key: key);

  @override
  State<ReadyScreen> createState() => _ReadyScreenState();
}

class _ReadyScreenState extends State<ReadyScreen> {
  @override
  AudioPlayer audioPlayer = AudioPlayer();
  void initState() {
    // TODO: implement initState

    super.initState();
    audioPlayer.play(AssetSource('sounds/robotic-countdown-43935.wav'));
    navigateAfter(seconds: 4, context: context, routeName: Routes.quiz);
  }

  void dispose() {
    audioPlayer.stop();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(AppAssets.ready),
      ),
    );
  }
}
