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
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateAfter(seconds: 4, context: context, routeName: Routes.quiz);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(AppAssets.ready),
      ),
    );
  }
}
