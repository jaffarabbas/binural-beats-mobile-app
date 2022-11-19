import 'package:binural_app/res/constants.dart';
import 'package:binural_app/view/dashboard-screen/dashboard-screen.dart';
import 'package:binural_app/view/home_view/home_view.dart';
import 'package:binural_app/view/login_view/login_view.dart';
import 'package:binural_app/view/register_view/register_view.dart';
import 'package:binural_app/providers/changeBottomNavigationProvider.dart';
import 'package:binural_app/res/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
          ChangeNotifierProvider(create: (_) => ChnageBottomNavgationProvider()),
      ],
      child: Builder(
        builder: (context) {
          return ScreenUtilInit(
            designSize: size,
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: maintheme,
                home: const HomeView(),
              );
            },
          );
        },
      ),
    );
  }
}
