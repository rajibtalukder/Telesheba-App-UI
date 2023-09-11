import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/constants/colors.dart';
import 'package:telesheba_app/global_widgets/custom_texts.dart';
import 'package:telesheba_app/global_widgets/normal_button.dart';
import 'package:telesheba_app/views/authentication/signin_screen.dart';
import 'package:telesheba_app/views/custom_navigation.dart';

import '../../global_widgets/custom_text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(27.w, 25.h, 27.w, 0.h),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Align(
                  alignment: Alignment.center,
                  child: subTitleText('Sign Up To Telesheba',
                      color: primaryColor, size: 20)),
              SizedBox(height: 20.h),
              subTitleText('User Name', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController()),
              SizedBox(height: 10.h),
              subTitleText('Phone number', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController()),
              SizedBox(height: 10.h),
              subTitleText('Password', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController()),
              SizedBox(height: 10),
              subTitleText('Select Division', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController(),
                  icon: Icons.keyboard_arrow_down_outlined,
                  iconColor: secondaryTextColor),
              SizedBox(height: 10.h),
              subTitleText('Select District', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController(),
                  icon: Icons.keyboard_arrow_down_outlined,
                  iconColor: secondaryTextColor),
              SizedBox(height: 10.h),
              subTitleText('Select Upozila', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController(),
                  icon: Icons.keyboard_arrow_down_outlined,
                  iconColor: secondaryTextColor),
              SizedBox(height: 10.h),
              subTitleText('Select Thana', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController(),
                  icon: Icons.keyboard_arrow_down_outlined,
                  iconColor: secondaryTextColor),
               SizedBox(height: 10.h),
              subTitleText('Select Village or Area', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController(),
                  icon: Icons.keyboard_arrow_down_outlined,
                  iconColor: secondaryTextColor),
              SizedBox(height: 10.h),
              subTitleText('Birth Year', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController(),
                  icon: Icons.keyboard_arrow_down_outlined,
                  iconColor: secondaryTextColor),
              SizedBox(height: 20.h),
              normalButton('Sign Up',
                  color: borderColor, textColor: primaryTextColor,onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const CustomNavigation()));
                  }),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  subTitleText(
                    'Already have an account?',
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
                          MaterialPageRoute(builder: (_) => const SigninScreen()));
                    },
                    child: subTitleText(
                      'Sign In',
                      fontWeight: FontWeight.w700,
                      size: 15,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
