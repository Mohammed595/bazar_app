import 'package:bazar_app/core/feature/auth/ui/widgets/have_account_btn.dart';
import 'package:bazar_app/core/feature/auth/ui/widgets/register_button.dart';
import 'package:bazar_app/core/feature/auth/ui/widgets/sign_title_disc.dart';
import 'package:bazar_app/core/feature/auth/ui/widgets/title_text_feild_widget.dart';
import 'package:bazar_app/core/routing/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.only(
            top: 80.h,
            left: 15.h,
            right: 15.h,
            bottom: 10.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SignTitleAndDiscWidget(
                title: 'Welcome Back 👋',
                disc: 'Sign to your account',
              ),
              SizedBox(
                height: 24.h,
              ),

              // text feild

              SizedBox(
                height: 5.h,
              ),
              const TitleAndTextFeildWidget(
                title: 'Email',
              ),
              SizedBox(
                height: 16.h,
              ),
              const TitleAndTextFeildWidget(
                title: 'Password',
              ),

              SizedBox(
                height: 10.h,
              ),

              RegisterButtonWidget(
                title: 'Sign in',
                func: () {},
              ),

              SizedBox(
                height: 12.h,
              ),

              HaveAccountButton(
                titleBtn: 'Sign Up',
                disc: 'Don\'t have an account?',
                func: () {
                  Navigator.pushNamed(context, Routers.signUpScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
