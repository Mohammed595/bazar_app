import 'package:bazar_app/core/theming/styles.dart/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageAndTitleAndDiscWidget extends StatelessWidget {
  const ImageAndTitleAndDiscWidget(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.disc});
  final String imagePath;
  final String title;
  final String disc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(imagePath),
        ),
        SizedBox(
          width: 250.w,
          child: Text(
            title,
            style: AppTextStyle.size26BoldBlack,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          width: 300.w,
          child: Text(
            disc,
            style: AppTextStyle.size16Width300Black,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
