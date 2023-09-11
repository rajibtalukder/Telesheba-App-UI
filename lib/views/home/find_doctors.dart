import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/global_widgets/normal_button.dart';
import 'package:telesheba_app/views/home/booking_screen.dart';

import '../../constants/colors.dart';
import '../../global_widgets/custom_text_field.dart';
import '../../global_widgets/custom_texts.dart';

class FindDoctors extends StatefulWidget {
  const FindDoctors({super.key});

  @override
  State<FindDoctors> createState() => _FindDoctorsState();
}

class _FindDoctorsState extends State<FindDoctors> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(27.w, 25.h, 27.w, 0.h),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h),
              Align(
                  alignment: Alignment.center,
                  child: subTitleText('Find Doctors',
                      color: primaryTextColor, size: 20)),
              SizedBox(height: 30.h),
              subTitleText('Select Division', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController(),
                  icon: Icons.keyboard_arrow_down_outlined,
                  iconColor: secondaryTextColor),
              SizedBox(height: 10.h),
              subTitleText('Select District', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController(),
                  icon: Icons.keyboard_arrow_down_outlined,
                  iconColor: secondaryTextColor),
              SizedBox(height: 10.h),
              subTitleText('Select Thana', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController(),
                  icon: Icons.keyboard_arrow_down_outlined,
                  iconColor: secondaryTextColor),
              SizedBox(height: 10.h),
              subTitleText('Select Union', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController(),
                  icon: Icons.keyboard_arrow_down_outlined,
                  iconColor: secondaryTextColor),
              SizedBox(height: 10.h),
              subTitleText('Select Village or Area', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController(),
                  icon: Icons.keyboard_arrow_down_outlined,
                  iconColor: secondaryTextColor),
              SizedBox(height: 10.h),
              subTitleText('Select Doctor Depertment', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController(),
                  icon: Icons.keyboard_arrow_down_outlined,
                  iconColor: secondaryTextColor),
              SizedBox(height: 10.h),
              subTitleText('Your Age', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController()),
              SizedBox(height: 20.h),
              Container(
                height: 46.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: borderColor, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8.r))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      subTitleText('Emergency',
                          size: 14, color: primaryTextColor),
                      Switch(
                        value: light,
                        activeColor: primaryColor,
                        onChanged: (bool value) {
                          setState(() {
                            light = value;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              normalButton('Next', textSize: 16,onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => BookingScreen()));
              }),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
