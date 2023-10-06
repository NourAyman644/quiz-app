import 'package:flutter/material.dart';
import 'package:quiz_app/core/routes/app_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.initilRoute,
      onGenerateRoute: AppRoutes.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
