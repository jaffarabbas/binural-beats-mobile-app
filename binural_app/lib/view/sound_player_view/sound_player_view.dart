import 'package:binural_app/providers/soundPlayerSliderProvider.dart';
import 'package:binural_app/res/assets.dart';
import 'package:binural_app/res/colors.dart';
import 'package:binural_app/res/components/appBar.dart';
import 'package:binural_app/res/components/appDrawer.dart';
import 'package:binural_app/res/components/soundGraph.dart';
import 'package:binural_app/res/theme/theme.dart';
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
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 45.w,
                            child: SvgPicture.asset(download),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Sleep Binural',
                                  style: TextStyle(
                                      fontSize: 16.sp, color: secondaryColor),
                                ),
                                Text(
                                  'Gama 430 Hz',
                                  style: TextStyle(
                                      fontSize: 13.sp, color: secondaryColor),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: secondaryColor,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Slider(
                            value:soundPlayerSliderProvider.continuousValue.value,
                            min: soundPlayerSliderProvider.min,
                            max: soundPlayerSliderProvider.max,
                            onChanged: (value) {
                              soundPlayerSliderProvider.setValue(value);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
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
