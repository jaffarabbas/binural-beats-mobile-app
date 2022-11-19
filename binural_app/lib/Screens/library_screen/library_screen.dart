import 'package:binural_app/components/soundSection.dart';
import 'package:binural_app/const/constants.dart';
import 'package:binural_app/pages/dashboard-screen/widgets/header.dart';
import 'package:binural_app/pages/library_screen/widgets/categoriesSlider.dart';
import 'package:binural_app/pages/library_screen/widgets/header.dart';
import 'package:binural_app/pages/library_screen/widgets/searchSounds.dart';
import 'package:binural_app/theme/colors.dart';
import 'package:binural_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../components/appBar.dart';
import '../../components/appBottomNavigationBar.dart';
import '../../components/appDrawer.dart';
import '../../components/mainCard.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

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
              LibraryHeader(),
              //sounds
              SoundSectionList(),
            ],
          ),
        ),
      ),
    );
  }
}
