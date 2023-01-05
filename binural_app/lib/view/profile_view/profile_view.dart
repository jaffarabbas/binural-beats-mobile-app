import 'package:binural_app/res/assets.dart';
import 'package:binural_app/res/colors.dart';
import 'package:binural_app/res/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../res/components/appBar.dart';
import '../../res/components/appBottomNavigationBar.dart';
import '../../res/components/appDrawer.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: linearBackground,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                profile_main,
                height: 120.h,
                width: 120.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Jaffar Abbas',
                style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: secondaryColor),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Jaffar Abbas',
                style: TextStyle(fontSize: 18.sp, color: secondaryColor),
              ),
            ],
          )),
    );
  }
}
