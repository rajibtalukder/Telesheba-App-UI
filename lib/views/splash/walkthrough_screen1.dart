import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/global_widgets/custom_texts.dart';
import 'package:telesheba_app/views/splash/walkthrough_screen2.dart';

import '../../constants/colors.dart';

class WalkthroughScreen1 extends StatelessWidget {
  const WalkthroughScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Padding(
          padding: EdgeInsets.fromLTRB(27.w, 25.h, 27.w, 10.h),
          child: Column(
            children: [
              const Expanded(child: SizedBox()),
              Center(
                child: SizedBox(
                  height: 255.h,
                  width: 255.w,
                  child: Image.asset(
                    'assets/images/walk1.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              subTitleText('Doctor Appointment', size: 24),
              subTitleText(
                  'Always take care of you wholeheartedly \nand thoughtfully.',
                  color: secondaryTextColor,
                  fontWeight: FontWeight.w400,
                  size: 16,
                  textCenter: true),
              const Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: subTitleText('Skip',
                        size: 15,
                        fontWeight: FontWeight.w700,
                        color: primaryTextColor),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 6.h,
                        width: 18.w,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.r))),
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        height: 6.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                            color: primaryColor.withOpacity(0.2),
                            borderRadius:
                            BorderRadius.all(Radius.circular(4.r))),
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        height: 6.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                            color: primaryColor.withOpacity(0.2),
                            borderRadius:
                            BorderRadius.all(Radius.circular(4.r))),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const WalkthroughScreen2()));
                    },
                    child: subTitleText('Next',
                        size: 15,
                        fontWeight: FontWeight.w700,
                        color: primaryColor),
                  ),
                ],
              ),
              SizedBox(height: 10.h,)
            ],
          ),
        ));
  }
}
