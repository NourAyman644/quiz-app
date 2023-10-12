import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/features/data/view/quiz_screen.dart';
import 'package:quiz_app/features/auth/presentation/screens/ready_screen.dart';
import 'package:quiz_app/features/auth/presentation/screens/splash_screen.dart';
import 'package:quiz_app/features/data/view/results.dart';

import '../../features/auth/presentation/screens/login_screen.dart';

class Routes {
  static const String initilRoute = '/';
  static const String login = '/login';
  static const String Ready = '/ready';
  static const String quiz = '/quiz';
  static const String result = '/result';
}

class AppRoutes {
  static int result = 0;
  static Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initilRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.Ready:
        return MaterialPageRoute(builder: (_) => const ReadyScreen());
      case Routes.quiz:
        return MaterialPageRoute(builder: (_) => QuizScreen());
      case Routes.result:
        return MaterialPageRoute(
            builder: (_) => Results(
                  result: result,
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('not found route'),
                  ),
                ));
    }
  }
}
