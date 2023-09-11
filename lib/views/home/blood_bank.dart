import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:telesheba_app/global_widgets/normal_button.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

import '../../constants/colors.dart';
import '../../global_widgets/custom_text_field.dart';
import '../../global_widgets/custom_texts.dart';
import 'blood_submit_screen.dart';

class BloodBank extends StatefulWidget {
  const BloodBank({super.key});

  @override
  State<BloodBank> createState() => _BloodBankState();
}

class _BloodBankState extends State<BloodBank> {
  int? selectedOption;
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

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
    return Scaffold(
      backgroundColor: white,
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
                    'Booking',
                    size: 20,
                  ),
                  SizedBox()
                ],
              ),
              SizedBox(height: 10.h),
              Container(
                child: TableCalendar(
                  focusedDay: today,
                  firstDay: DateTime.utc(2010, 10, 14),
                  lastDay: DateTime.utc(2030, 10, 14),
                  rowHeight: 50.h,
                  availableGestures: AvailableGestures.all,
                  onDaySelected: _onDaySelected,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    titleTextStyle: TextStyle(color: blackTextColor),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              subTitleText('Select Blood Group', size: 14),
              SizedBox(height: 10.h),
              GestureDetector(
                onTap: () {
                  print('==========');
                 ;
                },
                child: customTextField(TextEditingController(),
                    isActive: false,
                    icon: Icons.keyboard_arrow_down_outlined,
                    iconColor: secondaryTextColor),
              ),
              SizedBox(height: 30.h),
              subTitleText('Select Division', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController(),
                  icon: Icons.keyboard_arrow_down_outlined,
                  iconColor: secondaryTextColor),
              SizedBox(height: 30.h),
              subTitleText('Select District', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController(),
                  icon: Icons.keyboard_arrow_down_outlined,
                  iconColor: secondaryTextColor),
              SizedBox(height: 30.h),
              subTitleText('Select Thana', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController(),
                  icon: Icons.keyboard_arrow_down_outlined,
                  iconColor: secondaryTextColor),
              SizedBox(height: 30.h),
              subTitleText('Select Thana', size: 14),
              SizedBox(height: 10.h),
              customTextField(TextEditingController(),
                  icon: Icons.keyboard_arrow_down_outlined,
                  iconColor: secondaryTextColor),
              SizedBox(height: 10.h),
              subTitleText('Name of Hospital', size: 14),
              customTextField(TextEditingController()),
              SizedBox(height: 10.h),
              subTitleText('Are you in case of emergency?', size: 14),
              SizedBox(height: 10.h),
              Row(
                children: [
                  SizedBox(width: 5.w),
                  SizedBox(
                    height: 12.h,
                    width: 12.w,
                    child: Radio(
                      value: 1,
                      activeColor: primaryColor,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value!;
                          print("Button value: $value");
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10.w),
                  subTitleText('Yes', size: 12, fontWeight: FontWeight.w400),
                  SizedBox(width: 20.w),
                  SizedBox(
                    height: 12.h,
                    width: 12.w,
                    child: Radio(
                      value: 1,
                      activeColor: primaryColor,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value!;
                          print("Button value: $value");
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10.w),
                  subTitleText('No', size: 12, fontWeight: FontWeight.w400),
                ],
              ),
              SizedBox(height: 10.h),
              subTitleText('Do you want to exchange blood?', size: 14),
              SizedBox(height: 10.h),
              Row(
                children: [
                  SizedBox(width: 5.w),
                  SizedBox(
                    height: 12.h,
                    width: 12.w,
                    child: Radio(
                      value: 1,
                      activeColor: primaryColor,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value!;
                          print("Button value: $value");
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10.w),
                  subTitleText('Yes', size: 12, fontWeight: FontWeight.w400),
                  SizedBox(width: 20.w),
                  SizedBox(
                    height: 12.h,
                    width: 12.w,
                    child: Radio(
                      value: 1,
                      activeColor: primaryColor,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value!;
                          print("Button value: $value");
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 10.w),
                  subTitleText('No', size: 12, fontWeight: FontWeight.w400),
                ],
              ),
              SizedBox(height: 40.h),
              normalButton('Submit', textSize: 16, onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>BloodSubmitScreen()));
              }),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
