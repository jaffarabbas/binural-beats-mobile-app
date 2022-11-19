import 'package:binural_app/res/components/mainCard.dart';
import 'package:binural_app/res/colors.dart';
import 'package:binural_app/res/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SoundSLiderMain extends StatelessWidget {
  late String sliderName;
  SoundSLiderMain({super.key,required this.sliderName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.sp),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                sliderName,
                style: TextStyle(fontSize: 22.sp, color: secondaryColor),
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
                    color: cardList[index], frequencyInHurdz: [], spots: []);
              },
            ),
          ),
        ],
      ),
    );
  }
}
