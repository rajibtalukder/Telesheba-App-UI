import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/views/home/pregnancy_submit_screen.dart';

import '../../constants/colors.dart';
import '../../global_widgets/custom_text_field.dart';
import '../../global_widgets/custom_texts.dart';
import '../../global_widgets/normal_button.dart';

class PathologyFormScreen extends StatelessWidget {
  const PathologyFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          Container(
            height: 450.h,
            color: primaryColor.withOpacity(0.1),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 50.h),
                  height: 100.h,
                  child: Row(
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
                            border: Border.all(
                                color: secondaryTextColor.withOpacity(0.1),
                                width: 1),
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
                      subTitleText('Free Pregnancy Care', size: 18),
                      SizedBox()
                    ],
                  ),
                ),
                Image.asset('assets/images/preg_girls.png'),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 480.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  subTitleText('Name',size: 14),
                  SizedBox(height: 10.h),
                  customTextField(TextEditingController()),
                  SizedBox(height: 10.h),
                  subTitleText('District',size: 14),
                  SizedBox(height: 10.h),
                  customTextField(TextEditingController()),
                  SizedBox(height: 10.h),
                  subTitleText('Phone',size: 14),
                  SizedBox(height: 10.h),
                  customTextField(TextEditingController()),
                  SizedBox(height: 10.h),
                  subTitleText('Email',size: 14),
                  SizedBox(height: 10.h),
                  customTextField(TextEditingController()),
                  SizedBox(height: 30.h),
                  normalButton('Request to Pathology Test',textSize: 16,onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PregnancySubmitScreen()));
                  })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
