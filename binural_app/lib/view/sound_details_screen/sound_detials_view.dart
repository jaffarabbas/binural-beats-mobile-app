import 'package:binural_app/res/assets.dart';
import 'package:binural_app/res/colors.dart';
import 'package:binural_app/res/components/appBar.dart';
import 'package:binural_app/res/components/appBottomNavigationBar.dart';
import 'package:binural_app/res/components/appDrawer.dart';
import 'package:binural_app/res/components/mainCard.dart';
import 'package:binural_app/res/theme/theme.dart';
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
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          // width: double.infinity,
                          // decoration: linearBackgroundSoundDetails,
                          child: Stack(
                            children: <Widget>[
                              AspectRatio(
                                aspectRatio: 0.80,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(40),
                                    ),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment(0.8,
                                          0.0), // 10% of the width, so there are ten blinds.
                                      colors: cardList[0], // red to yellow
                                      tileMode: TileMode
                                          .clamp, // repeats the gradient over the canvas
                                    ),
                                  ),
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                      right: 3,
                                      left: 20,
                                      top: 100,
                                      bottom: 10,
                                    ),
                                    // height: 600.h,
                                    child: LineChart(
                                      mainData(),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 200.h,
                        right: 53.w,
                        child: Container(
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(40)),
                          child: IconButton(
                            onPressed: () {},
                            iconSize: 50,
                            icon: const Icon(
                              Icons.play_arrow,
                              color: linearColor2,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 190.h,
                        child: Container(
                          color: Colors.amber,
                          // width: 250.w,
                          padding: EdgeInsets.symmetric(horizontal: 20.sp),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Sleep Binural',
                                      style: TextStyle(
                                          fontSize: 22.sp, color: secondaryColor),
                                    ),
                                    Container(
                                      child : SvgPicture.asset(download),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: AppDrawer(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xffffffff),
      fontSize: 13,
    );

    List<String> l = ['10', '', '20', '', '30', '', '40', '', '50', '', '60'];

    return SideTitleWidget(
      // space: ,
      axisSide: meta.axisSide,
      child: Container(
          // color: Colors.amber,
          // margin: EdgeInsets.only(left: 10),
          // padding: EdgeInsets.only(left: 60),
          child: Text(
        value.toInt() < 11 ? l[value.toInt()] : '',
        style: style,
      )),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xffffffff),
      // fontWeight: FontWeight.bold,
      fontSize: 13,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = 'Alpha';
        break;
      case 3:
        text = 'Theta';
        break;
      case 5:
        text = 'Delta';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  Widget topTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xffffffff),
      // fontWeight: FontWeight.bold,
      fontSize: 13,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = 'Left Ear\n70.0 Hz';
        break;
      case 5:
        text = 'Result Ear\n70.0 Hz';
        break;
      case 9:
        text = 'Right Ear\n70.0 Hz';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          horizontalInterval: 3,
          verticalInterval: 7,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: const Color(0xffffffff),
              strokeWidth: 1,
            );
          },
          // getDrawingVerticalLine: (value) {
          //   return FlLine(
          //     color: const Color(0xff37434d),
          //     strokeWidth: 1,
          //   );
          // },
        ),
        titlesData: FlTitlesData(
          show: true,
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          topTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              interval: 1,
              getTitlesWidget: topTitleWidgets,
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              interval: 1,
              getTitlesWidget: bottomTitleWidgets,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              getTitlesWidget: leftTitleWidgets,
              reservedSize: 40,
            ),
          ),
        ),
        borderData: FlBorderData(
          show: false,
          // border: Border.all(color: const Color(0xff37434d)),
        ),
        minX: 0,
        maxX: 11,
        minY: -1,
        maxY: 7,
        lineBarsData: [
          LineChartBarData(
            spots: const [
              FlSpot(0, 6),
              FlSpot(2.6, 2),
              FlSpot(4.9, 5),
              FlSpot(6.8, 2.1),
              FlSpot(8, 4),
              FlSpot(9.5, 3),
              FlSpot(11, 6),
            ],
            isCurved: true,
            color: Color(0xffFCFF54),
            barWidth: 1,
            shadow: Shadow(
                color: Color(0xffFCFF54),
                blurRadius: 10.5,
                offset: Offset.zero),
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: false,
            ),
            // belowBarData: BarAreaData(
            //   show: false,
            //   gradient: LinearGradient(
            //     colors: gradientColors
            //         .map((color) => color.withOpacity(0.3))
            //         .toList(),
            //   ),
            // ),
          ),
        ]);
  }
}
