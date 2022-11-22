import 'package:binural_app/res/assets.dart';
import 'package:binural_app/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SoundPlayerHeader extends StatelessWidget {
  const SoundPlayerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 45.w,
            child: SvgPicture.asset(download),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sleep Binural',
                  style: TextStyle(fontSize: 16.sp, color: secondaryColor),
                ),
                Text(
                  'Gama 430 Hz',
                  style: TextStyle(fontSize: 13.sp, color: secondaryColor),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: secondaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
