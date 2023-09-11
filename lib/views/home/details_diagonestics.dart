import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/constants/colors.dart';
import 'package:telesheba_app/global_widgets/custom_texts.dart';

class DetailsDiagonestics extends StatelessWidget {
  const DetailsDiagonestics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgWhite,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 223.h,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/details_dia.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  left: 30.w,
                  top: 80.h,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.r),
                        ),
                      ),
                      child: Icon(Icons.arrow_back_ios_new),
                    ),
                  ))
            ],
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.fromLTRB(27.w, 0, 27.w, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                subTitleText('Popular Hospital', size: 17),
                SizedBox(height: 10.h),
                subTitleText('Street Address',
                    size: 12,
                    color: secondaryTextColor,
                    fontWeight: FontWeight.w400),
                SizedBox(height: 10.h),
                subTitleText(
                    'Lorem ipsum dolor sit amet consectetur. '
                    'Non proin amet turpis mauris vel. Molestie interdum '
                    'ac in odio nunc lacus amet amet. Posuere et donec '
                    'risus aenean massa egestas enim eget. Magna suspendisse'
                    ' viverra laoreet laoreet in sed. Purus dictumst ac '
                    'imperdiet tempus diam quam pretium id convallis.',
                    size: 12,
                    color: secondaryTextColor,
                    fontWeight: FontWeight.w400),
                SizedBox(height: 20.h),
                subTitleText('Location in map', size: 17),
                SizedBox(height: 10.h),
                Container(
                  height: 170.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.r)),
                    color: white
                  ),
                  child: Image.asset('assets/images/map.png'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
