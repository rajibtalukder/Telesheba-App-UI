import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/global_widgets/normal_button.dart';
import 'package:telesheba_app/views/custom_navigation.dart';
import 'package:telesheba_app/views/home/find_doctors.dart';

import '../../constants/colors.dart';
import '../../global_widgets/custom_texts.dart';

class QusSubmitScreen extends StatelessWidget {
  const QusSubmitScreen({super.key});

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
                    'assets/images/questionSub.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              subTitleText('Your Question Have Submitted', size: 18),
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const CustomNavigation()));
                  }),
                  normalButton('Call Now',width: 150,textSize: 16,color: green,onPressed: (){
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (_) => const FindDoctors()));
                  }),
                ],
              ),
              SizedBox(height: 10.h,),
            ],
          ),
        ));
  }
}
