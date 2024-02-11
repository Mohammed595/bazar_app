import 'package:bazar_app/core/feature/auth/ui/widgets/register_button.dart';
import 'package:bazar_app/core/routing/routers.dart';
import 'package:bazar_app/core/theming/assets_path.dart';
import 'package:bazar_app/core/theming/styles.dart/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CongratulationScreen extends ConsumerWidget {
  const CongratulationScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.congratulationImage),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Congratulation!',
              style: AppTextStyle.size26BoldBlack,
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 270.h,
              child: Text(
                'your account is complete, please enjoy the best menu from us.!',
                style: AppTextStyle.size16Width500Gray,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                right: 15.h,
              ),
              child: RegisterButtonWidget(
                title: 'Get Started',
                func: () {
                  Navigator.pushNamed(context, Routers.homeScreen);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
