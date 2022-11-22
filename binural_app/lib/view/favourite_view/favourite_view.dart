import 'package:binural_app/res/colors.dart';
import 'package:binural_app/res/components/appBar.dart';
import 'package:binural_app/res/components/appDrawer.dart';
import 'package:binural_app/res/components/mainCard.dart';
import 'package:binural_app/res/components/secondaryCard.dart';
import 'package:binural_app/res/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(isContainAction: false),
      body: Container(
        decoration: linearBackground,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50.h),
              child: Row(
                children: [
                  SecondaryCard(color: cardList[0], frequencfyInHurdz: [], spots: [])
                ],
              ),
            )
          ],
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}