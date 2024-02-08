import 'package:bazar_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle size32BoldWhite = GoogleFonts.roboto(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    decoration: TextDecoration.none,
  );

  static TextStyle size26BoldBlack = GoogleFonts.roboto(
    fontSize: 26.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.mainBlackColor,
    decoration: TextDecoration.none,
  );

  static TextStyle size16Width300Black = GoogleFonts.roboto(
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
    decoration: TextDecoration.none,
  );
  static TextStyle size16Width500Gray = GoogleFonts.roboto(
    color: Color(0xffA6A6A6),
    fontSize: 16.sp,
    decoration: TextDecoration.none,
  );
  static TextStyle size16WidthBoldBlack = GoogleFonts.roboto(
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.none,
  );
  static TextStyle size15Width500Gray = GoogleFonts.roboto(
    color: Colors.grey,
    fontSize: 15.sp,
    // fontWeight: FontWeight.bold,
    decoration: TextDecoration.none,
  );
  static TextStyle size14BoldPurple = GoogleFonts.roboto(
    color: AppColors.mainPurpleColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.none,
  );
  static TextStyle size16BoldWhite = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.none,
  );
  static TextStyle size16BoldPurple = GoogleFonts.roboto(
    color: AppColors.mainPurpleColor,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.none,
  );
}
