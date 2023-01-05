import 'dart:async';

import 'package:binural_app/res/assets.dart';
import 'package:binural_app/res/colors.dart';
import 'package:binural_app/res/theme/theme.dart';
import 'package:binural_app/utils/routes/routes_names.dart';
import 'package:binural_app/view/login_view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => {
       Navigator.pushNamed(context, RoutesName.login)
      });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        height: double.infinity,
        decoration: linearBackground,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(padding: EdgeInsets.all(20.sp),child: Image.asset(logo,height: 150.h,width: 150.w,)),
              Text(
                  'Sound Theraphist',
                  style: TextStyle(fontSize: 25.sp, color: secondaryColor),
                ),
            ],
          ),
        )
      ),
    );
  }
}