import 'package:binural_app/res/constants.dart';
import 'package:binural_app/view/register_view/widgets/registerButton.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterationList extends StatelessWidget {
  const RegisterationList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: registerOptions.length,
        itemBuilder: (context, index) {
        return RegisterButton(name: registerOptions[index]);
      },),
    );
  }
}