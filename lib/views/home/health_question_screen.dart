import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/global_widgets/custom_texts.dart';
import 'package:telesheba_app/global_widgets/normal_button.dart';
import 'package:telesheba_app/views/home/qus_submit_screen.dart';

import '../../constants/colors.dart';
import '../../global_widgets/custom_text_field.dart';

class HealthQuestionScreen extends StatelessWidget {
  const HealthQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(27.w, 25.h, 27.w, 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildHeader(context),
                SizedBox(height: 40.h),
                subTitleText('Ask Your Question', size: 14),
                SizedBox(height: 10.h),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: borderColor, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8.r))),
                  child: TextField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.text,
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      hintText: '',
                      hintStyle:
                          TextStyle(color: secondaryTextColor, fontSize: 14.sp),
                      fillColor: white,
                      //contentPadding: EdgeInsets.only(top: 20.h),
                    ),
                    style: const TextStyle(
                      color: primaryTextColor,
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                subTitleText('Select Gender', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(),
                    icon: Icons.keyboard_arrow_down_outlined,
                    iconColor: secondaryTextColor),
                SizedBox(height: 10.h),
                subTitleText('Your Age', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(),
                    icon: Icons.keyboard_arrow_down_outlined,
                    iconColor: secondaryTextColor),
                const Expanded(child: SizedBox()),
                normalButton('Submit', textSize: 16, onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const QusSubmitScreen()));
                }),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ));
  }

  Row buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(12.r),
              ),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              color: secondaryTextColor,
              size: 14,
            ),
          ),
        ),
        subTitleText(
          'Health Questions',
          size: 20,
        ),
        Container(
          height: 40.h,
          width: 40.w,
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.03),
            borderRadius: BorderRadius.all(
              Radius.circular(12.r),
            ),
          ),
          child: const Icon(
            Icons.search,
            color: primaryColor,
            size: 18,
          ),
        ),
      ],
    );
  }
}
