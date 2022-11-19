import 'package:binural_app/components/appBar.dart';
import 'package:binural_app/components/appBottomNavigationBar.dart';
import 'package:binural_app/components/appDrawer.dart';
import 'package:binural_app/components/mainCard.dart';
import 'package:binural_app/components/mainSoundSlider.dart';
import 'package:binural_app/const/assets.dart';
import 'package:binural_app/const/constants.dart';
import 'package:binural_app/pages/dashboard-screen/widgets/header.dart';
import 'package:binural_app/pages/dashboard-screen/widgets/headerSlider.dart';
import 'package:binural_app/components/soundSection.dart';
import 'package:binural_app/theme/colors.dart';
import 'package:binural_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../providers/changeBottomNavigationProvider.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});


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
