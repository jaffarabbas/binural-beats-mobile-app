import 'package:binural_app/view/dashboard-screen/dashboard-screen.dart';
import 'package:binural_app/view/home_view/home_view.dart';
import 'package:binural_app/view/library_view/library_view.dart';
import 'package:binural_app/view/login_view/login_view.dart';
import 'package:binural_app/view/notfound_view/notfound_view.dart';
import 'package:binural_app/view/profile_view/profile_view.dart';
import 'package:binural_app/view/register_view/register_view.dart';
import 'package:binural_app/view/sound_details_screen/sound_detials_view.dart';
import 'package:flutter/material.dart';

import 'assets.dart';

double height = 667;
double weight = 375;
Size size = Size(weight, height);
List<String> registerOptions = [
  'Sounds For Sleep',
  'Sounds For Study',
  'Sounds For Relaxation',
  'Sounds For Theraphy'
];
List<String> categories = ['Sleep', 'Study', 'Relaxation', 'Theraphy'];
List<String> sliderImages = [s1, s2, s3];
// List widgetsForRoute = const [
//   {"route_name": "home", "route": HomeView()},
//   {"route_name": "login", "route": LoginView()},
//   {"route_name": "register", "route": RegisterView()},
//   {"route_name": "dashboard", "route": DashBoardView()},
//   {"route_name": "library", "route": LibraryView()},
//   {"route_name": "splash", "route": SplashView()},
//   {"route_name": "sound_details", "route": SoundDetailsView()},
//   {"route_name": "profile", "route": ProfileView()},
//   {"route_name": "notfound", "route": NotFounView}
// ];
List<Widget> widgitsList = const [
  LibraryView(),
  DashBoardView(),
  ProfileView(),
  SoundDetailsView()
];
