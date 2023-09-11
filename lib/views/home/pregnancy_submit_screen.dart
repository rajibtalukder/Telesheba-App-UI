import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/views/custom_navigation.dart';

import '../../constants/colors.dart';
import '../../global_widgets/custom_texts.dart';
import '../../global_widgets/normal_button.dart';

class PregnancySubmitScreen extends StatelessWidget {
  const PregnancySubmitScreen({super.key});

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
                    'assets/images/preg_girls.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              subTitleText('Your Request Has Submitted', size: 18),
              subTitleText(
                  'We appreciate your request our team will reach \nyou in 48 hours of your request',
                  color: secondaryTextColor,
                  fontWeight: FontWeight.w400,
                  size: 16,
                  textCenter: true),

              SizedBox(height: 180.h),
              const Expanded(child: SizedBox()),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  normalButton('Back To Home',width: 150,textSize: 16,onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => CustomNavigation()));
                  }),
                  normalButton('Call Now',width: 150,textSize: 16,color: green,onPressed: (){
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (_) => ));
                  }),
                ],
              ),
              SizedBox(height: 10.h,),
            ],
          ),
        ));
  }
}
