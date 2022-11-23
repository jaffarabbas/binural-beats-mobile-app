import 'package:binural_app/res/colors.dart';
import 'package:binural_app/res/components/appBar.dart';
import 'package:binural_app/res/components/appDrawer.dart';
import 'package:binural_app/res/components/mainCard.dart';
import 'package:binural_app/res/components/secondaryCard.dart';
import 'package:binural_app/res/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(isContainAction: false),
      body: Container(
        decoration: linearBackground,
        child: Container(
          margin: EdgeInsets.only(top: 70.h),
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 20.h),
                child: Text(
                  'Favourite',
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                      color: secondaryColor),
                ),
              ),
              Container(
                height: 500.h,
                padding: EdgeInsets.zero,
                child: ListView.builder(
                   padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: 50,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 10.h),
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      decoration: sampleCardDecoration,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SecondaryCard(
                              color: cardList[0],
                              frequencfyInHurdz: [],
                              spots: []),
                          Container(
                            // padding: EdgeInsets.only(left: 5.sp),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sleep Binural',
                                  style: TextStyle(
                                      fontSize: 16.sp, color: secondaryColor),
                                ),
                                Text(
                                  'Gama 430 Hz',
                                  style: TextStyle(
                                      fontSize: 13.sp, color: secondaryColor),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              child: Icon(
                                Icons.play_circle_fill,
                                size: 50.sp,
                                color: secondaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
