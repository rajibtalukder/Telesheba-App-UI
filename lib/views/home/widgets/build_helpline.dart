import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../global_widgets/custom_texts.dart';

Widget buildHelpline() {
  return Container(
    height: 24.h,
    width: 82.w,
    decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(14.r))
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
            height: 13.h,
            width: 13.w,
            child: Image.asset(
              'assets/images/headphone.png',
              color: white,
              fit: BoxFit.contain,
            )),
        subTitleText('Helpline',size: 12,fontWeight: FontWeight.w400,color: white)
      ],
    ),
  );
}