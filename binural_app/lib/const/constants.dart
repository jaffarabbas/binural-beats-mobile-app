import 'package:binural_app/pages/dashboard-screen/dashboard-screen.dart';
import 'package:binural_app/pages/library_screen/library_screen.dart';
import 'package:binural_app/pages/profile_screen/profile_screen.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

import 'assets.dart';

double height = 667;
double weight = 375;
Size size = Size(weight, height);
List<String> registerOptions = ['Sounds For Sleep','Sounds For Study','Sounds For Relaxation','Sounds For Theraphy'];
List<String> categories = ['Sleep','Study','Relaxation','Theraphy'];
List<String> sliderImages = [s1, s2, s3];

List<Widget> widgitsList = const [
  LibraryScreen(),
  DashBoardScreen(),
  ProfileScreen()
];