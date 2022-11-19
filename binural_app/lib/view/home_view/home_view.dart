import 'package:binural_app/res/constants.dart';
import 'package:binural_app/res/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../res/components/appBar.dart';                                
import '../../res/components/appBottomNavigationBar.dart';
import '../../res/components/appDrawer.dart';
import '../../providers/changeBottomNavigationProvider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

                                                                                                                                                        @override
                                                                                                                                                        Widget build(BuildContext context) {
                                                                                                                                                          final changeBottomNavigationIndex =
                                                                                                                                                              Provider.of<ChnageBottomNavgationProvider>(context, listen: true);

                                                                                                                                                          return Scaffold(
      appBar: CustomAppBar(isContainAction: false,),
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