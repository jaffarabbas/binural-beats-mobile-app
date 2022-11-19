import 'package:binural_app/const/assets.dart';
import 'package:binural_app/theme/colors.dart';
import 'package:binural_app/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBtn extends StatelessWidget {
  late Image img;
  late String text;
  LoginBtn({super.key, required this.img, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      padding: EdgeInsets.symmetric(vertical: 3.h),
      decoration: loginBtnDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 30.h,
            padding: EdgeInsets.all(5.h),
            child: img,
          ),
          Text(
            text,
            style: TextStyle(color: primaryColor),
          )
        ],
      ),
    );
  }
}
