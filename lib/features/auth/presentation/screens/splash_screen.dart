import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/core/utils/AppAssets.dart';

import '../../../../core/routes/app_route.dart';
import '../../../../core/utils/commons.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  initState() {
    super.initState();
    navigateAfter(seconds: 8, context: context, routeName: Routes.login);
  }

  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    // double screenwidth = MediaQuery.of(context).size.width;
    // print(screenHeight);
    // print(screenwidth);
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          AppAssets.splash,
          fit: BoxFit.fill,
          // width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
