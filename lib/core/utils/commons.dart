import 'package:flutter/material.dart';

void Navigate({
  required BuildContext context,
  required String routeName,
  dynamic arg,
}) {
  Navigator.pushNamed(
    context,
    routeName,
    arguments: arg,
  );
}

void navigateAfter({
  required int seconds,
  required BuildContext context,
  required String routeName,
}) {
  Future.delayed(
    Duration(seconds: seconds),
  ).then((value) {
    Navigate(context: context, routeName: routeName);
  });
}
