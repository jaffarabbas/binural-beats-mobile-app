import 'package:binural_app/res/components/appBar.dart';
import 'package:binural_app/res/components/appBottomNavigationBar.dart';
import 'package:binural_app/res/components/appDrawer.dart';
import 'package:binural_app/res/components/mainCard.dart';
import 'package:binural_app/res/components/mainSoundSlider.dart';
import 'package:binural_app/view/dashboard-screen/widgets/header.dart';
import 'package:binural_app/view/dashboard-screen/widgets/headerSlider.dart';
import 'package:binural_app/res/components/soundSection.dart';
import 'package:binural_app/res/colors.dart';
import 'package:binural_app/res/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../providers/changeBottomNavigationProvider.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: linearBackground,
        child: Container(
          margin: EdgeInsets.only(top: 80.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              DashboardHeader(),
              SoundSectionList()
            ],
          ),
        ),
      ),
    );
  }
}
