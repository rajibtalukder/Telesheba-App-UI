import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/constants/colors.dart';
import 'package:telesheba_app/global_widgets/custom_text_field.dart';
import 'package:telesheba_app/global_widgets/custom_texts.dart';
import 'package:telesheba_app/views/more/widgets/build_profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
      children: [
          buildProfileHeader(context),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                subTitleText('User Name', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(text: 'Andrew')),
                SizedBox(height: 10.h),
                subTitleText('Password', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(text: '***********************')),
                SizedBox(height: 10.h),
                subTitleText('Division', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(text: 'Rajshahi')),
                SizedBox(height: 10.h),
                subTitleText('District', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(text: 'Bogura')),
                SizedBox(height: 10.h),
                subTitleText('Thana', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(text: 'Bogura')),
                SizedBox(height: 10.h),
                subTitleText('Upozila', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(text: 'Bogura')),
                SizedBox(height: 10.h),
                subTitleText('Village or Area', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(text: 'Bogura')),
                SizedBox(height: 10.h),
                subTitleText('Phone Number', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(text: '01749832760')),
                SizedBox(height: 10.h),
              ],
            ),
          )
      ],
    ),
        ));
  }
}
