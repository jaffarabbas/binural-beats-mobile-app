import 'package:binural_app/res/assets.dart';
import 'package:binural_app/res/colors.dart';
import 'package:binural_app/res/components/appBar.dart';
import 'package:binural_app/res/components/appBottomNavigationBar.dart';
import 'package:binural_app/res/components/appDrawer.dart';
import 'package:binural_app/res/components/bottomBar.dart';
import 'package:binural_app/res/components/mainCard.dart';
import 'package:binural_app/res/components/playButton.dart';
import 'package:binural_app/res/theme/theme.dart';
import 'package:binural_app/view/sound_details_screen/widgets/soundDetials.dart';
import 'package:binural_app/res/components/soundGraph.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SoundDetailsView extends StatelessWidget {
  const SoundDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isContainAction: true),
      extendBodyBehindAppBar: true,
      body: Container(
        // height: double.infinity,
        // color: Colors.amber,
        decoration: linearBackground,
        child: Container(
          // height: 600.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  child: Stack(
                    children: [
                      Positioned(top: 0.h, child: SoundGraph(isPlayer: false,)),
                      Positioned(top: 300.h, right: 53.w, child: const PlayButton()),
                      Positioned(bottom: -10.h, child: const SoundDetials()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: const AppDrawer(),
    );
  }
}
