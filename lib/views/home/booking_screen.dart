import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:telesheba_app/global_widgets/normal_button.dart';
import 'package:telesheba_app/views/home/qus_submit_screen.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

import '../../constants/colors.dart';
import '../../global_widgets/custom_texts.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

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
              subTitleText('Time', size: 17),
              Row(
                children: [
                  Container(
                    height: 100.h,
                    width: 225.w,
                    decoration: BoxDecoration(
                      color: white,
                        borderRadius: BorderRadius.all(Radius.circular(14.r)),
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
                        borderRadius: BorderRadius.all(Radius.circular(14.r))),
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
                                  size: 12, color: secondaryTextColor)),
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
                              child:
                                  subTitleText('PM', size: 12, color: white)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100.h),
              normalButton('Booking', textSize: 16,onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => QusSubmitScreen()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
