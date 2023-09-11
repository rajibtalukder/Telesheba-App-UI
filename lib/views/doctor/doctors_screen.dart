import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/constants/colors.dart';
import 'package:telesheba_app/views/home/booking_screen.dart';
import 'package:telesheba_app/views/home/find_doctors.dart';

import '../../global_widgets/build_doctor.dart';
import '../../global_widgets/custom_texts.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Padding(
          padding: EdgeInsets.fromLTRB(27.w, 25.h, 27.w, 0.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                Row(
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
                      'Results Of Doctor',
                      size: 20,
                    ),
                    SizedBox()
                  ],
                ),
                SizedBox(height: 10.h),
                for (int i = 0; i < 9; i++)
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => FindDoctors()));
                      },
                      child: buildDoctor()),
                SizedBox(height: 100.h)
              ],
            ),
          ),
        ));
  }
}
