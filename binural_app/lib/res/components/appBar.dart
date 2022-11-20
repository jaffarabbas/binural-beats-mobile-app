import 'package:binural_app/res/assets.dart';
import 'package:binural_app/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  bool isContainAction;
  CustomAppBar({Key? key,required this.isContainAction}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(70.h);
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      actions: [
        isContainAction ? IconButton(
          onPressed: (){},
          icon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.favorite),
          ),
        ) : Container()
      ],
    );
  }
}
