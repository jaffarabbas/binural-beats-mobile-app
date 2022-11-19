import 'package:binural_app/res/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderSlider extends StatelessWidget {
  const HeaderSlider({super.key});
  bool isEven(int num) {
    return num % 2 == 0 ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      padding: const EdgeInsets.all(0),
      alignment: Alignment.center,
      child: ListView.builder(
        itemCount: sliderImages.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 100.h,
            padding: EdgeInsets.symmetric(
                vertical: isEven(index) ? 50.sp : 20.sp, horizontal: 10.sp),
            child: Image.asset(sliderImages[index]),
          );
        },
      ),
    );
  }
}
