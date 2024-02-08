import 'package:bazar_app/core/theming/styles.dart/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleAndTextFeildWidget extends StatelessWidget {
  const TitleAndTextFeildWidget({super.key, required this.title});

  final String title;
  // controller

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.size16WidthBoldBlack,
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 60.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xffFAFAFA),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: const TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                  hintText: 'Your name',
                  hintStyle: TextStyle(
                    color: Color(0xffB8B8B8),
                    fontSize: 21,
                  ),
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  border: InputBorder.none),
            ),
          ),
        )
      ],
    );
  }
}
