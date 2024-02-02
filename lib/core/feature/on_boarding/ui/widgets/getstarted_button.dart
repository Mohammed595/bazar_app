import 'package:bazar_app/core/theming/colors.dart';
import 'package:bazar_app/core/theming/styles.dart/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStatedButtonWidget extends StatelessWidget {
  const GetStatedButtonWidget(
      {super.key,
      required this.title,
      required this.containarColor,
      required this.func});

  final String title;
  final Color containarColor;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        height: 56.h,
        width: 327.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: containarColor, borderRadius: BorderRadius.circular(12.h)),
        child: Text(
          title,
          style: containarColor == AppColors.mainPurpleColor
              ? AppTextStyle.size16BoldWhite
              : AppTextStyle.size16BoldPurple,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
