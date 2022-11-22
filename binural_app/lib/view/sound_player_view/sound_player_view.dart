import 'package:binural_app/providers/soundPlayerSliderProvider.dart';
import 'package:binural_app/res/assets.dart';
import 'package:binural_app/res/colors.dart';
import 'package:binural_app/res/components/appBar.dart';
import 'package:binural_app/res/components/appDrawer.dart';
import 'package:binural_app/res/components/playButton.dart';
import 'package:binural_app/res/components/soundGraph.dart';
import 'package:binural_app/res/theme/theme.dart';
import 'package:binural_app/view/sound_player_view/widgets/sound_player_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SoundPlayerView extends StatelessWidget {
  const SoundPlayerView({super.key});

  @override
  Widget build(BuildContext context) {
    final soundPlayerSliderProvider =
        Provider.of<SoundPlayerSliderProvider>(context, listen: true);

    return Scaffold(
      appBar: CustomAppBar(isContainAction: true),
      extendBodyBehindAppBar: true,
      body: Container(
        // height: double.infinity,
        // color: Colors.amber,
        decoration: CustomGradient(cardList[0]),
        child: Container(
          // height: 600.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SoundGraph(
                isPlayer: true,
              ),
              SoundPlayerSection(), 
              ],
          ),
        ),
      ),
      drawer: const AppDrawer(),
    );
  }
}
