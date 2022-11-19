import 'package:binural_app/pages/dashboard-screen/widgets/headerSlider.dart';
import 'package:binural_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'What Is Your Mood',
            style: TextStyle(fontSize: 30.sp, color: secondaryColor),
          ),
          HeaderSlider()
        ],
      ),
    );
  }
}
