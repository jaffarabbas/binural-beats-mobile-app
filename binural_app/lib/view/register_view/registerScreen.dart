import 'package:binural_app/view/register_view/widgets/registrationList.dart';
import 'package:binural_app/res/assets.dart';
import 'package:binural_app/res/colors.dart';
import 'package:binural_app/res/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: linearBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 120.h,
              width: 120.h,
              child: Image.asset(logo,fit: BoxFit.contain,),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Select Your Desire',
              style: TextStyle(fontSize: 25.sp, color: secondaryColor),
            ),
            SizedBox(
              height: 20.h,
            ),
            RegisterationList(),
          ],
        ),
      ),
    );
  }
}