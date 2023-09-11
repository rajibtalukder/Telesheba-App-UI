import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

import '../../../constants/colors.dart';
import '../../../global_widgets/custom_texts.dart';
import '../../../global_widgets/normal_button.dart';

class BuildReminderDialog extends StatefulWidget {
  const BuildReminderDialog({super.key});

  @override
  State<BuildReminderDialog> createState() => _BuildReminderDialogState();
}

class _BuildReminderDialogState extends State<BuildReminderDialog> {
  List<WheelChoice> aChoices = [
    WheelChoice(value: DateTime(2000, 1, 1, 9, 0), title: '15:19'),
    WheelChoice(value: DateTime(2000, 1, 1, 9, 30), title: '15:20'),
    WheelChoice(value: DateTime(2000, 1, 1, 10, 0), title: '15:21'),
    WheelChoice(value: DateTime(2000, 1, 1, 10, 30), title: '15:22'),
    WheelChoice(value: DateTime(2000, 1, 1, 9, 0), title: '15:19'),
    WheelChoice(value: DateTime(2000, 1, 1, 9, 30), title: '15:20'),
    WheelChoice(value: DateTime(2000, 1, 1, 10, 0), title: '15:21'),
    WheelChoice(value: DateTime(2000, 1, 1, 10, 30), title: '15:22'),
  ];
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Container(
          height: 250.h,
          width: 340.w,
          decoration: BoxDecoration(
              borderRadius:
              BorderRadius.all(Radius.circular(8.r))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              subTitleText('Time', size: 16),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Container(
                    height: 100.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(14.r)),
                      color: white,
                    ),
                    child: WheelChooser.choices(
                      onChoiceChanged: (value) {
                        // returns DateTime of selected title
                        print(
                            'selected time is ${value.hour} hours and ${value.minutes} minutes');
                      },
                      choices: aChoices,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    height: 100.h,
                    width: 78.w,
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                        border: Border.all(color: borderColor),
                        borderRadius: BorderRadius.all(
                            Radius.circular(14.r))),
                    child: Column(
                      children: [
                        Container(
                          height: 36.h,
                          width: 62.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.r),
                            ),
                          ),
                          child: Center(
                              child: subTitleText('AM',
                                  size: 12,
                                  color: secondaryTextColor)),
                        ),
                        Container(
                          height: 36.h,
                          width: 62.w,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.r),
                            ),
                          ),
                          child: Center(
                              child: subTitleText('PM',
                                  size: 12, color: white)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              normalButton('Done', textSize: 14)
            ],
          ),
        ),
      );

  }
}
