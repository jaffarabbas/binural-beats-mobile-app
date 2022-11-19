import 'package:binural_app/res/components/soundSection.dart';
import 'package:binural_app/view/dashboard-screen/widgets/header.dart';
import 'package:binural_app/view/library_view/widgets/categoriesSlider.dart';
import 'package:binural_app/view/library_view/widgets/header.dart';
import 'package:binural_app/view/library_view/widgets/searchSounds.dart';
import 'package:binural_app/res/colors.dart';
import 'package:binural_app/res/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../res/components/appBar.dart';
import '../../res/components/appBottomNavigationBar.dart';
import '../../res/components/appDrawer.dart';
import '../../res/components/mainCard.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({super.key});

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
