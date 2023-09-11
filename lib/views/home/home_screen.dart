import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/global_widgets/build_doctor.dart';
import 'package:telesheba_app/global_widgets/custom_text_field.dart';
import 'package:telesheba_app/global_widgets/custom_texts.dart';
import 'package:telesheba_app/views/home/find_doctors.dart';
import 'package:telesheba_app/views/home/health_question_screen.dart';
import 'package:telesheba_app/views/home/hospitals_and_diagonestics.dart';
import 'package:telesheba_app/views/home/widgets/build_ask_health_qus.dart';
import 'package:telesheba_app/views/home/widgets/build_diagonestic.dart';
import 'package:telesheba_app/views/home/widgets/build_helpline.dart';
import 'package:telesheba_app/views/home/widgets/dr_appointment.dart';
import 'package:telesheba_app/views/home/blood_bank.dart';
import 'package:telesheba_app/views/home/free_pregnancy_care.dart';
import 'package:telesheba_app/views/home/pathology_test_screen.dart';

import '../../constants/colors.dart';
import 'details_diagonestics.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgWhite,
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
                    GestureDetector(
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (_) => const HealthQuestionScreen()));
                        },
                        child: buildHelpline()),
                    SizedBox(width: 10.w),
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
              Container(
                height: 51.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.r))),
                child: Center(
                  child: TextField(
                    controller: TextEditingController(),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      hintText: 'Search Medicine',
                      hintStyle:
                          TextStyle(color: secondaryTextColor, fontSize: 14.sp),
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.search,
                          color: secondaryTextColor, size: 18),
                    ),
                    style: const TextStyle(
                      color: primaryTextColor,
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // GridView.builder(
              //     shrinkWrap: true,
              //     itemCount: 6,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //         childAspectRatio: 3 / 1.5,
              //         crossAxisCount: 2,
              //         crossAxisSpacing: 10.w,
              //         mainAxisSpacing: 10.h),
              //     itemBuilder: (context, index) {
              //       return dr_appoinment();
              //     }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  dr_appoinment(
                      text: 'Doctor’s \nappointment',
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => FindDoctors()));
                      }),
                  dr_appoinment(
                      text: 'Ambulance \nBooking',
                      isFree: false,
                      imageUrl: 'assets/images/ambulence.png'),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  dr_appoinment(
                    onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => BloodBank()));
                    },
                      text: 'Blood \nDonation',
                      imageUrl: 'assets/images/bld_donate.png'),
                  dr_appoinment(
                      text: 'Pregnancy \nCare',
                      onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => FreePregnancyCare()));
                      },
                      imageUrl: 'assets/images/preg_care.png'),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  dr_appoinment(
                      text: 'Nurse \nappointment',
                      isFree: false,
                      imageUrl: 'assets/images/nurse.png'),
                  dr_appoinment(
                      text: 'Foreign Doctor\nappointment',
                      onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => FindDoctors()));
                      },
                      imageUrl: 'assets/images/foreign_dr.png'),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  dr_appoinment(
                      text: 'Pathology \nTest',
                      onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => PathologyTestScreen()));
                      },
                      imageUrl: 'assets/images/foreign_dr.png'),
                  SizedBox()
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  subTitleText('Top Doctors in your area', size: 15),
                  subTitleText('See all', size: 15, color: primaryColor)
                ],
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => const HealthQuestionScreen()));
                  },
                  child: buildAskHealthQus()),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  subTitleText('Top Doctors in your area', size: 15),
                  subTitleText('See all', size: 15, color: primaryColor)
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                height: 476.h,
                child: ListView(
                  children: [
                    for (int j = 0; j < 5; j++)
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => const FindDoctors()));
                          },
                          child: buildDoctor())
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  subTitleText('Nearby Diagonistics', size: 15),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const HospitalsAndDiagonestics()));
                      },
                      child: subTitleText('See all',
                          size: 15, color: primaryColor))
                ],
              ),
              SizedBox(height: 20.h),
              SizedBox(
                height: 380.h,
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 2 / 2.3,
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.w,
                        mainAxisSpacing: 10.h),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => DetailsDiagonestics(),
                              ),
                            );
                          },
                          child: buildDiagonestic());
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
