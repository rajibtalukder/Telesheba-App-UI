import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/constants/colors.dart';
import 'package:telesheba_app/global_widgets/custom_text_field.dart';
import 'package:telesheba_app/global_widgets/normal_button.dart';
import 'package:telesheba_app/views/medicine/medicine_screen.dart';
import 'package:telesheba_app/views/medicine/widgets/build_reminder_dialog.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

import '../../global_widgets/custom_texts.dart';

class SetReminderScreen extends StatefulWidget {
  const SetReminderScreen({super.key});

  @override
  State<SetReminderScreen> createState() => _SetReminderScreenState();
}

class _SetReminderScreenState extends State<SetReminderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(27.w, 25.h, 27.w, 0.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  subTitleText(
                    'Schedule Medicine',
                    size: 20,
                  ),
                  const SizedBox()
                ],
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) =>const MedicineScreen()));
                },
                child: Container(
                  height: 51.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: secondaryTextColor.withOpacity(0.1), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8.r))),
                  child: Center(
                    child: TextField(
                      //controller: TextEditingController(),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        enabled: false,
                        border: InputBorder.none,
                        filled: true,
                        hintText: 'Search Medicine',
                        hintStyle: TextStyle(
                            color: secondaryTextColor, fontSize: 14.sp),
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
              ),
              SizedBox(height: 20.h),
              subTitleText('Days of week', size: 16),
              SizedBox(height: 20.h),
              Row(
                children: [
                  for (int i = 0; i < 8; i++)
                    Container(
                      margin: EdgeInsets.only(right: 5.w),
                      height: 32.h,
                      width: 32.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: secondaryTextColor.withOpacity(0.1),
                              width: 1),
                          borderRadius:
                          BorderRadius.all(Radius.circular(50.r))),
                      child: Center(child: subTitleText('M', size: 12)),
                    )
                ],
              ),
              SizedBox(height: 20.h),
              subTitleText('Medicine Name', size: 16),
              SizedBox(height: 10.h),
              customTextField(TextEditingController()),
              SizedBox(height: 10.h),
              subTitleText('Alarm Name', size: 16),
              SizedBox(height: 10.h),
              customTextField(TextEditingController()),
              SizedBox(height: 10.h),
              Container(
                height: 46.h,
                width: double.infinity,
                padding: EdgeInsets.all(10.h),
                decoration: BoxDecoration(
                    color: white,
                    border: Border.all(color: borderColor, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8.r))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    subTitleText('Alarm Sound', size: 14),
                    SizedBox(
                      height: 14.h,
                      width: 22.w,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: CupertinoSwitch(
                          value: true,
                          onChanged: (w) {},
                          activeColor: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 46.h,
                width: double.infinity,
                padding: EdgeInsets.all(10.h),
                decoration: BoxDecoration(
                    color: white,
                    border: Border.all(color: borderColor, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8.r))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    subTitleText('Vibration', size: 14),
                    SizedBox(
                      height: 14.h,
                      width: 22.w,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: CupertinoSwitch(
                          value: true,
                          onChanged: (w) {},
                          activeColor: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 46.h,
                width: double.infinity,
                padding: EdgeInsets.all(10.h),
                decoration: BoxDecoration(
                    color: white,
                    border: Border.all(color: borderColor, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8.r))),
                child: Row(
                  children: [
                    subTitleText('Snooze', size: 14),
                    SizedBox(width: 5.w),
                    subTitleText('(5 minutes, 3times)',
                        size: 10, fontWeight: FontWeight.w400),
                    const Expanded(child: SizedBox()),
                    SizedBox(
                      height: 14.h,
                      width: 22.w,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: CupertinoSwitch(
                          value: true,
                          onChanged: (w) {},
                          activeColor: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60.h),
              normalButton('Set reminder', textSize: 16, onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const BuildReminderDialog();
                    });
              }),
            ],
          ),
        ),
      ),
    );
  }
}
