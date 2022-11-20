
import 'package:binural_app/res/constants.dart';
import 'package:binural_app/view/home_view/home_view.dart';
import 'package:binural_app/view/login_view/login_view.dart';
import 'package:binural_app/view/notfound_view/notfound_view.dart';
import 'package:binural_app/view/sound_details_screen/sound_detials_view.dart';
import 'package:binural_app/view/splash_view/splash_view.dart';
import 'package:binural_app/utils/routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final arguments = routeSettings.arguments; 
    // return MaterialPageRoute(builder: (BuildContext context) => widgetsForRoute[RoutesName.dashboard]);
    switch (routeSettings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => HomeView());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => LoginView());
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => SplashView());
      case RoutesName.sound_details:
        return MaterialPageRoute(
              builder: (BuildContext context) => SoundDetailsView());
      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => NotFounView(page: routeSettings.name.toString(),));
    }
  }
}