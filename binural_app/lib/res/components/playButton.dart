import 'package:binural_app/res/colors.dart';
import 'package:binural_app/res/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: soundPlayButtonDecoration,
      child: IconButton(
        onPressed: () {},
        iconSize: 40.sp,
        icon: const Icon(
          Icons.play_arrow,
          color: linearColor2,
        ),
      ),
    );
  }
}
