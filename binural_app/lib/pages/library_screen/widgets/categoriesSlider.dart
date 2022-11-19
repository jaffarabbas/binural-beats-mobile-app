import 'package:binural_app/const/constants.dart';
import 'package:binural_app/theme/colors.dart';
import 'package:binural_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesSlider extends StatelessWidget {
  const CategoriesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.only(left: 20.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Categories',
                style: TextStyle(fontSize: 22.sp, color: secondaryColor),
              ),
            ],
          ),
          Container(
            height: 30.h,
            margin: EdgeInsets.only(top: 20.h, bottom: 20.h),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 100.w,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(right: 20.w),
                  decoration: categoriesListDecoration,
                  child: Text(
                    categories[index],
                    style: TextStyle(fontSize: 15.sp, color: secondaryColor),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
