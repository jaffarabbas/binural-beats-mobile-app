import 'package:binural_app/utils/routes/routes_names.dart';
import 'package:binural_app/view/login_view/widgets/loginBtn.dart';
import 'package:binural_app/res/assets.dart';
import 'package:binural_app/res/colors.dart';
import 'package:binural_app/res/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
              'Come Join Our Universe',
              style: TextStyle(fontSize: 25.sp, color: secondaryColor),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(onTap: (){
              Navigator.pushNamed(context, RoutesName.register);
            },child: LoginBtn(img: Image.asset(googleIcon), text: 'Login With Google')),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: (){
              Navigator.pushNamed(context, RoutesName.register);
            },
              child: LoginBtn(
                  img: Image.asset(facebookIcon), text: 'Login With Facebook'),
            )
          ],
        ),
      ),
    );
  }
}
