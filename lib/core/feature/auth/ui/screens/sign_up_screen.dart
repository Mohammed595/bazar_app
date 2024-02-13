import 'package:bazar_app/core/feature/auth/ui/widgets/have_account_btn.dart';
import 'package:bazar_app/core/feature/auth/ui/widgets/register_button.dart';
import 'package:bazar_app/core/feature/auth/ui/widgets/sign_title_disc.dart';
import 'package:bazar_app/core/feature/auth/ui/widgets/terms_button.dart';
import 'package:bazar_app/core/feature/auth/ui/widgets/title_text_feild_widget.dart';
import 'package:bazar_app/core/routing/routers.dart';
import 'package:bazar_app/core/service/remote_data/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends ConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // final authProv = ref.watch(authServProvider);
    TextEditingController editingConName = TextEditingController();
    TextEditingController editingConEmail = TextEditingController();
    TextEditingController editingConPassword = TextEditingController();
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
              TitleAndTextFeildWidget(
                title: 'Name',
                textControl: editingConName,
              ),

              SizedBox(
                height: 16.h,
              ),
              TitleAndTextFeildWidget(
                title: 'Email',
                textControl: editingConEmail,
              ),
              SizedBox(
                height: 16.h,
              ),
              TitleAndTextFeildWidget(
                title: 'Password',
                textControl: editingConPassword,
              ),

              SizedBox(
                height: 10.h,
              ),

              RegisterButtonWidget(
                title: 'Register',
                func: () async {
                  // here get All Contrllers

                  User? user = await ref
                      .read(authServProvider)
                      .signUp(editingConEmail.text, editingConPassword.text);

                  if (user == null) {
                  } else {
                    Navigator.pushNamed(context, Routers.homeScreen);
                  }
                },
              ),

              SizedBox(
                height: 12.h,
              ),

              HaveAccountButton(
                titleBtn: 'Sign In',
                disc: 'Have an account?',
                func: () {
                  Navigator.pushNamed(context, Routers.signInScreen);
                },
              ),

              // const Spacer(),
              SizedBox(
                height: 45.h,
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
