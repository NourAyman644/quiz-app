import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/utils/AppColors.dart';

TextStyle _textstyle({
  required Color color,
  required double fontSize,
  required FontWeight fontWight,
}) {
  return GoogleFonts.lato(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWight,
  );
}

//bold style
TextStyle boldStyle({
  Color color = AppColors.white,
  double fontSize = 24,
}) =>
    _textstyle(
      color: color,
      fontSize: fontSize,
      fontWight: FontWeight.bold,
    );
// regular
TextStyle regularStyle({
  Color color = AppColors.white,
  double fontSize = 24,
}) =>
    _textstyle(
      color: color,
      fontSize: fontSize,
      fontWight: FontWeight.w400,
    );
