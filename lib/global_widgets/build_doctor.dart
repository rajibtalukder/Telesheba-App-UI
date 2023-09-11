import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';
import 'custom_texts.dart';

Widget buildDoctor() {
  return Container(
    height: 105.h,
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
    margin: EdgeInsets.only(bottom: 15.h),
    decoration: BoxDecoration(
        color: white,
        border: Border.all(color: borderColor, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(15.r))),
    child: Row(
      children: [
        Container(
          height: 88.h,
          width: 88.w,
          decoration: BoxDecoration(
              color: borderColor,
              borderRadius: BorderRadius.all(Radius.circular(8.r))),
          child: Image.asset(
            'assets/images/dr_harry.png',
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(width: 10.w),
        SizedBox(
          width: 190.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  subTitleText('Dr. Harry', size: 15),
                  Container(
                    height: 15.h,
                    width: 58.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: primaryColor),
                    child: Center(
                        child: subTitleText('Sponsor',
                            color: white, size: 10)),
                  )
                ],
              ),
              subTitleText('GP-general practitioner',
                  color: secondaryTextColor,
                  size: 12,
                  fontWeight: FontWeight.w400),
              Row(
                children: [
                  Icon(Icons.star_border,color: Colors.orange,size: 16),
                  subTitleText('3.5',size: 12,
                      fontWeight: FontWeight.w400),
                  SizedBox(width: 20.w),
                  Icon(Icons.lock_clock,color: primaryColor,size: 16),
                  subTitleText('07:00 am - 09:30 pm',size: 12,
                      fontWeight: FontWeight.w400),
                ],
              ),
              SizedBox(),

            ],
          ),
        )
      ],
    ),
  );
}