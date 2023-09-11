import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../global_widgets/custom_texts.dart';

Widget buildReminder() {
  return Container(
    height: 104.h,
    width: double.infinity,
    padding: EdgeInsets.all(15.w),
    margin: EdgeInsets.only(bottom: 10.h),
    decoration: BoxDecoration(
      border: Border.all(
          color: secondaryTextColor.withOpacity(0.1), width: 1),
      borderRadius: BorderRadius.all(Radius.circular(14.r)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        subTitleText('Aristropharma Seclo', size: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            subTitleText('Medicine:  Seclo',
                size: 12,
                fontWeight: FontWeight.w400,
                color: secondaryTextColor),
            SizedBox(
              height: 14.h,
              width: 22.w,
              child: FittedBox(
                fit: BoxFit.contain,
                child: CupertinoSwitch(
                  value: true,
                  onChanged: (w) {},
                  activeColor: primaryColor,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(Icons.restart_alt,color: Color(0xffFF8A48),size: 14),
            subTitleText('Everyday',size: 12,fontWeight: FontWeight.w400),
            SizedBox(width:10.w),
            const Icon(Icons.access_time,size: 14,color: primaryColor),
            subTitleText('01:00 pm',size: 12,fontWeight: FontWeight.w400),
            SizedBox(width:10.w),
            const Icon(Icons.access_time,size: 14,color: primaryColor),
            subTitleText('04:00 pm',size: 12,fontWeight: FontWeight.w400),
          ],
        )
      ],
    ),
  );
}