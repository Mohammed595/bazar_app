import 'package:bazar_app/core/theming/colors.dart';
import 'package:bazar_app/core/theming/styles.dart/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterButtonWidget extends StatelessWidget {
  const RegisterButtonWidget(
      {super.key, required this.title, required this.func});

  final String title;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: func,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 48.h)),
        backgroundColor: MaterialStateProperty.all(AppColors.mainPurpleColor),
      ),
      child: Text(
        title,
        style: AppTextStyle.size16BoldWhite,
      ),
    );
  }
}
