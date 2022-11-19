import 'package:binural_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchSounds extends StatelessWidget {
  const SearchSounds({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 0.h),
        margin: EdgeInsets.symmetric(vertical: 10.h),
        decoration: categoriesSearchFeildContainerDecoration,
        child: TextFormField(
          decoration: categoriesTextFeildDecoration,
        ),
      ),
    );
  }
}
