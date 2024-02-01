import 'package:bazar_app/core/theming/assets_path.dart';
import 'package:bazar_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Timer(Duration(seconds: 3), () {
    //   Navigator.pushNamed(context, Routers.homeScreen);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppColors.mainBlueColor,
      child: Stack(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppIcons.bazarLogo,
                  height: 40.sp,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Bazar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 33.sp,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 1.sp,
            child: Image.asset(AppImages.splashBackgroundImage),
          )
        ],
      ),
    );
  }
}
