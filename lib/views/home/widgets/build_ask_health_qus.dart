import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../global_widgets/custom_texts.dart';

Widget buildAskHealthQus() {
  return Container(
    height: 94.h,
    decoration: BoxDecoration(
      color: Color(0xff94EDD8),
      borderRadius: BorderRadius.all(Radius.circular(8.r)),
    ),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 0),
          height: 84.h,
          width: 127.w,
          child: Image.asset(
            'assets/images/childs.png',
            fit: BoxFit.contain,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.h),
            subTitleText('Ask Health related Questions', size: 13),
            subTitleText('We will answer you in 48 hours',
                size: 10, fontWeight: FontWeight.w300),
            SizedBox(height: 10.h),
            Container(
              height: 23.h,
              width: 58.w,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius:
                  BorderRadius.all(Radius.circular(4.r))),
              child: Center(
                  child: subTitleText('Proceed',
                      color: white, size: 10)),
            )
          ],
        )
      ],
    ),
  );
}