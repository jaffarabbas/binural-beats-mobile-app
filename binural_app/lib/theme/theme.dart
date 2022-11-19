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

const linearBackgroundBottomNavigation = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment(0.0, 7.0),
    end: Alignment(0.0, 13.0), // 10% of the width, so there are ten blinds.
    colors: linearBackgroundColor, // red to yellow
    tileMode: TileMode.clamp, // repeats the gradient over the canvas
  ),
);

//library
const categoriesListDecoration = BoxDecoration(
    color: linearColor1, borderRadius: BorderRadius.all(Radius.circular(10)));

const categoriesSearchFeildContainerDecoration = BoxDecoration(
    color: linearColor1, borderRadius: BorderRadius.all(Radius.circular(15)));

const categoriesTextFeildDecoration = InputDecoration(
  hintText: "Search",
  fillColor: linearColor1,
  contentPadding: EdgeInsets.only(top: 15),
  hintStyle: TextStyle(
    color: secondaryColor,
  ),
  prefixIcon: Icon(Icons.search,color: secondaryColor,size: 23,),
  suffixIcon: Icon(Icons.mic,color: secondaryColor,size: 23,),
  focusedBorder: InputBorder.none,
  enabledBorder: InputBorder.none,
  errorBorder: InputBorder.none,
  disabledBorder: InputBorder.none,
);
//auth
const loginBtnDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  color: secondaryColor,
);

const registerBtnDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  color: linearColor1,
);
