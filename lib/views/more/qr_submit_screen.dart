import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../global_widgets/custom_texts.dart';
import '../../global_widgets/normal_button.dart';

class QrSubmitScreen extends StatelessWidget {
  const QrSubmitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Padding(
          padding: EdgeInsets.fromLTRB(27.w, 25.h, 27.w, 10.h),
          child: Column(
            children: [
             SizedBox(height: 60.h),
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: secondaryTextColor.withOpacity(0.1),
                          width: 1),
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
              ),
              SizedBox(height: 60.h),
              Center(
                child: SizedBox(
                  height: 255.h,
                  width: 255.w,
                  child: Image.asset(
                    'assets/images/discount_girl.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              subTitleText('Your Request Have Submitted', size: 18),
              subTitleText(
                  'We appreciate your request our team will reach \nyou in 48 hours of your request',
                  color: secondaryTextColor,
                  fontWeight: FontWeight.w400,
                  size: 16,
                  textCenter: true),
              const Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  normalButton('Back To Home',width: 150,textSize: 16,onPressed: (){
                    Navigator.of(context).pop();
                  }),
                  normalButton('Call Now',width: 150,textSize: 16,color: green,onPressed: (){
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (_) => const PathologyTestScreen()));
                  }),
                ],
              ),
              SizedBox(height: 10.h,),
            ],
          ),
        ));
  }
}
