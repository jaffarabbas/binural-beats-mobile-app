import 'package:binural_app/res/assets.dart';
import 'package:binural_app/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SoundPlayerControls extends StatelessWidget {
  const SoundPlayerControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
      margin: EdgeInsets.symmetric(vertical: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: SvgPicture.asset(shuffle),
          ),
          Container(
            child: SvgPicture.asset(back),
          ),
          Container(
            child: Icon(
              Icons.play_circle_fill,
              color: secondaryColor,
              size: 80.sp,
            ),
          ),
          Container(
            child: SvgPicture.asset(forward),
          ),
          Container(
            child: SvgPicture.asset(loop),
          ),
        ],
      ),
    );
  }
}
