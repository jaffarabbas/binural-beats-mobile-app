import 'package:binural_app/res/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SoundGraph extends StatelessWidget {
  bool isPlayer;
  SoundGraph({super.key,required this.isPlayer});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      // decoration: linearBackgroundSoundDetails,
      child: AspectRatio(
        aspectRatio: 0.90.sp,
        child: DecoratedBox(
          decoration: !isPlayer ? BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.sp),
                bottomRight: Radius.circular(40.sp)),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(
                  0.8, 0.0), // 10% of the width, so there are ten blinds.
              colors: cardList[0], // red to yellow
              tileMode: TileMode.clamp, // repeats the gradient over the canvas
            ),
          ) : BoxDecoration(),
          child: Container(
            padding: EdgeInsets.only(
              right: 3.sp,
              left: 20.sp,
              top: 100.sp,
              bottom: 10.sp,
            ),
            // height: 600.h,
            child: LineChart(
              mainData(),
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: secondaryColor,
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
      color: secondaryColor,
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
      color: secondaryColor,
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
              color: secondaryColor,
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
