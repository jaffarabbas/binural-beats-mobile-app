            import 'package:binural_app/res/colors.dart';
import 'package:binural_app/res/theme/theme.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterButton extends StatelessWidget {
  late String name;
  RegisterButton({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: registerBtnDecoration,
      padding: EdgeInsets.symmetric(vertical: 17.h),
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 10.h),
      child: Text(
        name,
        style: TextStyle(
          color: secondaryColor,
          fontSize: 18.sm
        ),
      ),
    );
  }
}