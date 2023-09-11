import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../global_widgets/custom_texts.dart';

Widget dr_appoinment({
  bool? isFree = true,
  String? text,
  String? imageUrl,
  Function()? onPressed,
}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      height: 76.h,
      width: 154.w,
      padding: EdgeInsets.fromLTRB(5.w, 3.h, 0, 3.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12.r),
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
                height: 80.h,
                width: 100.w,
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12.r),
                      bottomRight: Radius.circular(12.r),
                    ),
                    child: Image.asset(imageUrl??'assets/images/doctor_home.png',
                        fit: BoxFit.cover))),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  isFree == true
                      ? Container(
                          height: 15.h,
                          width: 42.w,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.r),
                            ),
                          ),
                          child: Center(
                              child: subTitleText(
                            'Free',
                            color: white,
                            size: 10,
                          )),
                        )
                      : SizedBox(height: 15.h, width: 42.w),
                  const SizedBox(height: 10),
                  subTitleText(text??'Doctor\'s \nappointment',
                    size: 14,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
