import 'package:binural_app/res/assets.dart';
import 'package:binural_app/res/colors.dart';
import 'package:binural_app/view/sound_player_view/widgets/sound_player_controls.dart';
import 'package:binural_app/view/sound_player_view/widgets/sound_player_header.dart';
import 'package:binural_app/view/sound_player_view/widgets/sound_player_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SoundPlayerSection extends StatelessWidget {
  const SoundPlayerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 350.w,
            margin: EdgeInsets.symmetric(vertical: 10.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SoundPlayerHeader(),
                SoundPlayerSlider(),
                SoundPlayerControls(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
