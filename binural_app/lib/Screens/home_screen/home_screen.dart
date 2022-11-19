import 'package:binural_app/const/constants.dart';
import 'package:binural_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../components/appBar.dart';
import '../../components/appBottomNavigationBar.dart';
import '../../components/appDrawer.dart';
import '../../providers/changeBottomNavigationProvider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final changeBottomNavigationIndex =
        Provider.of<ChnageBottomNavgationProvider>(context, listen: true);

    return Scaffold(
      appBar: const CustomAppBar(),
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        decoration: linearBackground,
        child: widgitsList[changeBottomNavigationIndex.index],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      drawer: const AppDrawer(),
    );
  }
}