import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/constants/colors.dart';
import 'package:telesheba_app/global_widgets/normal_button.dart';

import '../../global_widgets/custom_texts.dart';

class UpgradePlanScreen extends StatelessWidget {
  const UpgradePlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 60.h),
            height: 110.h,
            child: Row(
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
                          color: secondaryTextColor.withOpacity(0.1), width: 1),
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
                SizedBox(width: 80.w),
                subTitleText('Upgrade Plan', size: 18),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 248.h,
                    width: 220.w,
                    child: Image.asset('assets/images/upgrade.png'),
                  ),
                ),
                SizedBox(height: 30.h),

                subTitleText('Why Upgrade Plan?',
                    size: 16, color: primaryColor),
                SizedBox(height: 30.h),
                for(int i=0;i<4;i++)
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 15.h,
                            width: 15.w,
                            child: Image.asset('assets/images/rightIcon.png'),
                          ),
                          SizedBox(width: 10.w),
                          subTitleText('Lorem ipsum dolor sit amet consectetur.',
                              size: 14, fontWeight: FontWeight.w400),
                        ],
                      ),
                      SizedBox(height: 30.h),
                    ],
                  ),

                SizedBox(height: 60.h),
                normalButton('Upgrade Plan',textSize: 16)
              ],
            ),
          )
        ],
      ),
    );
  }
}
