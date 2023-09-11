import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../global_widgets/custom_texts.dart';

Widget buildDiagonestic() {
  return Container(
    height: 184.h,
    width: 154.w,
    padding: EdgeInsets.all(10.w),
    decoration: BoxDecoration(
        color: Color(0xffF3F3FF),
        border: Border.all(color: Colors.grey.withOpacity(0.1), width: 1),
        borderRadius: BorderRadius.all(Radius.circular(14.r))),
    child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 88.h,
            width: 132.w,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8.r)),
              child: Image.asset(
                'assets/images/diagonestics.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          subTitleText('Popular Diagonistic', size: 14),
          Row(
            children: [
              subTitleText('Street Address',
                  color: secondaryTextColor, size: 12),
              SizedBox(width: 5.w),
              Icon(Icons.star_border, color: Colors.orange, size: 16),
              subTitleText('2.3', size: 10, fontWeight: FontWeight.w400),
            ],
          ),
          Row(
            children: [
              Icon(Icons.lock_clock, color: primaryColor, size: 16),
              SizedBox(width: 5.w),
              subTitleText('07:00 am - 09:30 pm',
                  size: 12, fontWeight: FontWeight.w400),
            ],
          ),
        ],
      ),
    ),
  );
}
