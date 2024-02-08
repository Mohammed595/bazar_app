import 'package:bazar_app/core/feature/auth/ui/widgets/have_account_btn.dart';
import 'package:bazar_app/core/feature/auth/ui/widgets/register_button.dart';
import 'package:bazar_app/core/feature/auth/ui/widgets/sign_title_disc.dart';
import 'package:bazar_app/core/feature/auth/ui/widgets/terms_button.dart';
import 'package:bazar_app/core/feature/auth/ui/widgets/title_text_feild_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                title: 'Sign Up',
                disc: 'Create account and choose favorite menu',
              ),
              SizedBox(
                height: 24.h,
              ),

              // text feild
              const TitleAndTextFeildWidget(
                title: 'Name',
              ),

              SizedBox(
                height: 16.h,
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

              const RegisterButtonWidget(
                title: 'Register',
              ),

              SizedBox(
                height: 12.h,
              ),

              const HaveAccountButton(
                titleBtn: 'Sign In',
                disc: 'Have an account?',
              ),

              // const Spacer(),
              SizedBox(
                height: 40.h,
              ),

              const Center(
                child: TermsButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
