import 'package:binural_app/const/assets.dart';
import 'package:binural_app/theme/colors.dart';
import 'package:binural_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../providers/changeBottomNavigationProvider.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final changeBottomNavigationIndex =
        Provider.of<ChnageBottomNavgationProvider>(context, listen: true);

    return Container(
      decoration: linearBackgroundBottomNavigation,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          changeBottomNavigationIndex.setIndex(index);
        },
        selectedItemColor: primaryColor,
        currentIndex: changeBottomNavigationIndex.index,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset(library), label: 'Library'),
          BottomNavigationBarItem(icon: SvgPicture.asset(home), label: 'Home'),
          BottomNavigationBarItem(icon: SvgPicture.asset(profile), label: 'Profile'),
        ],
      ),
    );
  }
}
