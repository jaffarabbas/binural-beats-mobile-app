import 'package:binural_app/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SoundPlayerSlider extends StatelessWidget {
  const SoundPlayerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Slider(
            value: 34,
            min: 0,
            max: 100,
            activeColor: secondaryColor,
            inactiveColor: secondaryColor,
            onChanged: (value) {
              // soundPlayerSliderProvider.setValue(value);
            },
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '0:00',
                  style: TextStyle(color: secondaryColor),
                ),
                Text(
                  '0:00',
                  style: TextStyle(color: secondaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
