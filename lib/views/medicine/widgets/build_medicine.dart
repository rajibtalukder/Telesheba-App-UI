import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/constants/colors.dart';
import 'package:telesheba_app/global_widgets/custom_texts.dart';

Widget buildMedicine() {
  return SizedBox(
    height: 54.h,
    width: double.infinity,
    child: Row(
      children: [
        Container(
          height: 54.h,
          width: 62.w,
          decoration: BoxDecoration(
            border: Border.all(
                color: secondaryTextColor.withOpacity(0.2), width: 1),
            borderRadius: BorderRadius.all(
              Radius.circular(8.r),
            ),
          ),
          child: Image.asset(
            'assets/images/medicine_img.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                subTitleText('Paracetamol',
                    size: 10, fontWeight: FontWeight.w400),
                SizedBox(width: 5.w),
                const Icon(Icons.circle, size: 5, color: secondaryTextColor),
                SizedBox(width: 5.w),
                subTitleText('Tablet', size: 10, fontWeight: FontWeight.w400),
              ],
            ),
            subTitleText('Napa Extend', size: 12),
            subTitleText('Beximco Pharmaceuticals',
                size: 10, color: primaryColor),
          ],
        ),
        Expanded(child: SizedBox()),
        subTitleText('\$25', size: 14),
        SizedBox(width: 10.w)
      ],
    ),
  );
}
