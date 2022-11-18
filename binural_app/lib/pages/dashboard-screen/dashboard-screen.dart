import 'package:binural_app/components/appBar.dart';
import 'package:binural_app/components/appDrawer.dart';
import 'package:binural_app/components/mainCard.dart';
import 'package:binural_app/const/assets.dart';
import 'package:binural_app/theme/colors.dart';
import 'package:binural_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  bool isEven(int num) {
    return num % 2 == 0 ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    List<String> sliderImages = [s1, s2, s3];
    return Scaffold(
      appBar: CustomAppBar(),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: linearBackground,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 80.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'What Is Your Mood',
                  style: TextStyle(fontSize: 30.sp, color: secondaryColor),
                ),
                Container(
                  height: 150.h,
                  padding: EdgeInsets.all(0),
                  alignment: Alignment.center,
                  child: ListView.builder(
                    itemCount: sliderImages.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100.h,
                        padding: EdgeInsets.symmetric(
                            vertical: isEven(index) ? 50.sp : 20.sp,
                            horizontal: 10.sp),
                        child: Image.asset(sliderImages[index]),
                      );
                    },
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20.sp),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'New Sounds',
                                    style: TextStyle(
                                        fontSize: 22.sp, color: secondaryColor),
                                  ),
                                ],
                              ),
                              Container(
                                height: 190.h,
                                margin: EdgeInsets.only(top: 15.h),
                                child: ListView.builder(
                                  itemCount: sliderImages.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return MainCard(
                                        color: cardList[index],
                                        frequencyInHurdz: [],
                                        spots: []);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20.sp),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Popular Sounds',
                                    style: TextStyle(
                                        fontSize: 22.sp, color: secondaryColor),
                                  ),
                                ],
                              ),
                              Container(
                                height: 180.h,
                                margin: EdgeInsets.only(top: 15.h),
                                child: ListView.builder(
                                  itemCount: sliderImages.length,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return MainCard(
                                        color: cardList[index],
                                        frequencyInHurdz: [],
                                        spots: []);
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
