// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:binural_app/view/favourite_view/favourite_view.dart';
import 'package:binural_app/view/home_view/home_view.dart';
import 'package:binural_app/view/login_view/login_view.dart';
import 'package:binural_app/view/notfound_view/notfound_view.dart';
import 'package:binural_app/view/profile_view/profile_view.dart';
import 'package:binural_app/view/register_view/registerScreen.dart';
import 'package:binural_app/view/saved_view/saved_view.dart';
import 'package:binural_app/view/sound_details_screen/sound_detials_view.dart';
import 'package:binural_app/view/sound_player_view/sound_player_view.dart';
import 'package:binural_app/view/splash_view/splash_view.dart';
import 'package:binural_app/utils/routes/routes_names.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final arguments = routeSettings.arguments;
    // return MaterialPageRoute(builder: (BuildContext context) => widgetsForRoute[RoutesName.dashboard]);
    switch (routeSettings.name) {
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => HomeView());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => LoginView());
      case RoutesName.register:
        return MaterialPageRoute(
            builder: (BuildContext context) => RegisterView());
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => SplashView());
      case RoutesName.sound_details:
        return MaterialPageRoute(
            builder: (BuildContext context) => SoundDetailsView());
      case RoutesName.sound_player:
        return MaterialPageRoute(
            builder: (BuildContext context) => SoundPlayerView());
      case RoutesName.favourite:
        return MaterialPageRoute(
            builder: (BuildContext context) => FavouriteView());
      case RoutesName.saved:
        return MaterialPageRoute(
            builder: (BuildContext context) => SavedView());
      case RoutesName.profile:
        return MaterialPageRoute(
            builder: (BuildContext context) => ProfileView());
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => NotFounView(
            page: routeSettings.name.toString(),
          ),
        );
    }
  }
}
