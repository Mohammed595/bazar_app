import 'dart:async';
import 'package:bazar_app/core/feature/on_boarding/ui/widgets/logo_name.dart';
import 'package:bazar_app/core/routing/routers.dart';
import 'package:bazar_app/core/theming/assets_path.dart';
import 'package:bazar_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, Routers.startControlScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppColors.mainPurpleColor,
      child: Stack(
        children: [
          const Center(
            child: LogoNameWidget(
              name: 'Bazar',
              pathLogo: AppIcons.bazarLogo,
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
