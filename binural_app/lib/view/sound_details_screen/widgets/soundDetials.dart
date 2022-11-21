import 'package:binural_app/res/assets.dart';
import 'package:binural_app/res/colors.dart';
import 'package:binural_app/res/components/bottomBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SoundDetials extends StatelessWidget {
  const SoundDetials({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      // decoration: BoxDecoration(
      // color: Colors.amber,
      // ),
      // width: 250.w,
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // color: Colors.red,
              width: 200.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sleep Binural',
                    style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                        color: secondaryColor),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: SvgPicture.asset(download),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              width: 340.w,
              child: const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                style: TextStyle(color: secondaryColor, fontSize: 12),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Frequency',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: secondaryColor),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '350 Hz',
                    style: TextStyle(fontSize: 20.sp, color: secondaryColor),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sound Type',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: secondaryColor),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Binural (GAMA)",
                    style: TextStyle(fontSize: 20.sp, color: secondaryColor),
                  ),
                ],
              ),
            ),
            Container(
              width: 335.w,
              margin: EdgeInsets.symmetric(vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [BottomLineBar()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
