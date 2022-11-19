import 'package:binural_app/const/constants.dart';
import 'package:binural_app/pages/dashboard-screen/dashboard-screen.dart';
import 'package:binural_app/pages/home_screen/home_screen.dart';
import 'package:binural_app/pages/login-screen/loginPage.dart';
import 'package:binural_app/pages/register-screen/registerScreen.dart';
import 'package:binural_app/providers/changeBottomNavigationProvider.dart';
import 'package:binural_app/theme/theme.dart';
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
                home: const HomeScreen(),
              );
            },
          );
        },
      ),
    );
  }
}
