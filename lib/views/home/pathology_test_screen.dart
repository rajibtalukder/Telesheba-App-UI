import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/global_widgets/normal_button.dart';
import 'package:telesheba_app/views/home/pathology_form_screen.dart';
import 'package:telesheba_app/views/more/balance_point_screen.dart';

import '../../constants/colors.dart';
import '../../global_widgets/custom_texts.dart';

class PathologyTestScreen extends StatelessWidget {
  const PathologyTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(27.w, 25.h, 27.w, 10.h),
            child: ListView(
              children: [
                SizedBox(
                  height: 60.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      subTitleText(
                        'LOGO',
                        color: primaryColor,
                        fontWeight: FontWeight.w700,
                        size: 20,
                      ),
                      const Expanded(child: SizedBox()),
                      SizedBox(
                        height: 24.h,
                        width: 24.h,
                        child: const Icon(Icons.menu, color: primaryColor),
                      ),
                      SizedBox(width: 10.w),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  height: 221.h,
                  width: 255.w,
                  child: Image.asset('assets/images/pathology.png'),
                ),
                SizedBox(height: 50.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildTest(context),
                    buildTest(context),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget buildTest(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PathologyFormScreen()));
      },
      child: Container(
        height: 97.h,
        width: 156.w,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
        decoration: BoxDecoration(
            border: Border.all(color: secondaryTextColor.withOpacity(0.1)),
            borderRadius: BorderRadius.all(Radius.circular(8.r))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            subTitleText('Blood Test', size: 14),
            Row(
              children: [
                subTitleText('Starts From',
                    size: 12,
                    fontWeight: FontWeight.w400,
                    color: secondaryTextColor),
                subTitleText('\$56', size: 12, fontWeight: FontWeight.w600),
              ],
            ),
            SizedBox(
              height: 22.h,
              width: 61.w,
              child: normalButton('Submit', textSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
