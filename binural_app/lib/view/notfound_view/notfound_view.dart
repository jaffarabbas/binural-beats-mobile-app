import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotFounView extends StatelessWidget {
  String page;
  NotFounView({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("No route defined for ${page}"),
      ),
    );
  }
}
