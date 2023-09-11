import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/global_widgets/custom_texts.dart';
import 'package:telesheba_app/views/home/free_pregnancy_care.dart';

import '../../constants/colors.dart';

class BalancePointScreen extends StatelessWidget {
  const BalancePointScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          buildHeader(context),
          Padding(
            padding: EdgeInsets.fromLTRB(27.w, 25.h, 27.w, 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                subTitleText('Transaction History', size: 16),
                for (int i = 0; i < 5; i++)
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (_) => const FreePregnancyCare()));
                    },
                    child: Container(
                      height: 66.h,
                      margin: EdgeInsets.only(top: 10.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(4.r)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: bgWhite.withOpacity(0.8),
                            spreadRadius: 3,
                            blurRadius: 8,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              subTitleText('Blood test',
                                  size: 10, color: primaryColor),
                              subTitleText('Trans ID: FGFGHG67GH',
                                  size: 8, fontWeight: FontWeight.w400),
                              subTitleText('3 June 2023',
                                  size: 8,
                                  fontWeight: FontWeight.w400,
                                  color: secondaryTextColor),
                            ],
                          ),
                          Column(
                            children: [
                              subTitleText('\$450',
                                  size: 12, fontWeight: FontWeight.w700),
                              subTitleText('Square Hospital',
                                  size: 8,
                                  fontWeight: FontWeight.w400,
                                  color: primaryColor),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      height: 178.h,
      width: 378.w,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
        color: primaryColor,
      ),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              subTitleText('\$1500', size: 32, color: white),
              subTitleText('Total Balance', size: 10, color: white)
            ],
          )
        ],
      ),
    );
  }
}
