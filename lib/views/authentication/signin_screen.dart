import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/constants/colors.dart';
import 'package:telesheba_app/global_widgets/custom_text_field.dart';
import 'package:telesheba_app/global_widgets/custom_texts.dart';
import 'package:telesheba_app/global_widgets/normal_button.dart';
import 'package:telesheba_app/views/authentication/signup_screen.dart';
import 'package:telesheba_app/views/custom_navigation.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(27.w, 25.h, 27.w, 0.h),
          child: ListView(
            children: [
              SizedBox(
                height: 226.h,
                width: 320.w,
                child: Image.asset('assets/images/splash.png',
                    fit: BoxFit.contain),
              ),
              SizedBox(height: 10.h),
              subTitleText('User Name', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController()),
              SizedBox(height: 10.h),
              subTitleText('Password', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController()),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.topRight,
                child: subTitleText('Forgot Password?',
                    size: 15, color: primaryColor, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 20.h),
              normalButton('Sign In',onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const CustomNavigation()));
              }),
              SizedBox(height: 170.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  subTitleText(
                    'Don’t have an account?',
                    fontWeight: FontWeight.w400,
                    size: 14,
                    color: secondaryTextColor,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const SignupScreen()));
                    },
                    child: subTitleText(
                      'Sign Up',
                      fontWeight: FontWeight.w700,
                      size: 15,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
