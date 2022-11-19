import 'package:binural_app/res/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../res/components/appBar.dart';
import '../../res/components/appBottomNavigationBar.dart';
import '../../res/components/appDrawer.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: linearBackground,
        child: Text('4'),
      ),
    );
  }
}