import 'package:bazar_app/core/theming/styles.dart/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LogoNameWidget extends StatelessWidget {
  const LogoNameWidget({super.key, required this.name, required this.pathLogo});
  final String pathLogo;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          pathLogo,
          height: 40.sp,
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          name,
          style: AppTextStyle.size32BoldWhite,
        ),
      ],
    );
  }
}
