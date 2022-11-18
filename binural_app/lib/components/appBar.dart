import 'package:binural_app/const/assets.dart';
import 'package:binural_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(70.h);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // flexibleSpace: Container(
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //       begin: const FractionalOffset(0.0, 0.0),
      //       end: const FractionalOffset(1.0, 0.0),
      //       stops: [0.0, 1.0],
      //       tileMode: TileMode.clamp,
      //       colors: linearBackgroundColor, // red to yellow
      //     ),
      //   ),
      // ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      bottomOpacity: 0.0,
      automaticallyImplyLeading: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Builder(
          builder: (context) => IconButton(
            icon: SvgPicture.asset(
              primary_drawer_logo,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
    );
  }
}
