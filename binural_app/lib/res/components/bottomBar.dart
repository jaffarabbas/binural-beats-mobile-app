import 'package:binural_app/res/colors.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomLineBar extends StatelessWidget {
  const BottomLineBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      height: 1,
      width: 250.w,
      child: Container(),
    );
  }
}