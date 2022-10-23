import 'package:binural_app/const/assets.dart';
import 'package:binural_app/pages/login-screen/widgets/loginBtn.dart';
import 'package:binural_app/theme/colors.dart';
import 'package:binural_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: linearBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logo),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Come Join Our Universe',
              style: TextStyle(fontSize: 25.sp, color: secondaryColor),
            ),
            SizedBox(
              height: 15.h,
            ),
            LoginBtn(img: Image.asset(googleIcon), text: 'Login With Google'),
            SizedBox(
              height: 15.h,
            ),
            LoginBtn(
                img: Image.asset(facebookIcon), text: 'Login With Facebook')
          ],
        ),
      ),
    );
  }
}
