import 'package:bazar_app/core/theming/styles.dart/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignTitleAndDiscWidget extends StatelessWidget {
  const SignTitleAndDiscWidget(
      {super.key, required this.title, required this.disc});

  final String title;
  final String disc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.size26BoldBlack,
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          disc,
          style: AppTextStyle.size15Width500Gray,
        ),
      ],
    );
  }
}
