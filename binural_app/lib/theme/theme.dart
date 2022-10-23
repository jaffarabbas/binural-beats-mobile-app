//background linear color
import 'package:binural_app/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData maintheme =
    ThemeData(fontFamily: GoogleFonts.montserrat().fontFamily);

const linearBackground = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
    colors: linearBackgroundColor, // red to yellow
    tileMode: TileMode.clamp, // repeats the gradient over the canvas
  ),
);

const loginBtnDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  color: secondaryColor,
);
