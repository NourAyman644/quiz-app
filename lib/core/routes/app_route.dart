import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/features/auth/presentation/screens/ready_screen.dart';
import 'package:quiz_app/features/auth/presentation/screens/splash_screen.dart';

import '../../features/auth/presentation/screens/login_screen.dart';

class Routes {
  static const String initilRoute = '/';
  static const String login = '/login';
  static const String Ready = '/ready';
}

class AppRoutes {
  static Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initilRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.Ready:
        return MaterialPageRoute(builder: (_) => const ReadyScreen());
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
