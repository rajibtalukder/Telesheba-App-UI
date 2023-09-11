import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/constants/colors.dart';
import 'package:telesheba_app/views/medicine/set_reminder_screen.dart';
import 'package:telesheba_app/views/medicine/widgets/build_reminder.dart';

import '../../global_widgets/custom_texts.dart';

class Myreminder_screen extends StatelessWidget {
  const Myreminder_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgWhite,
      body: Padding(
        padding: EdgeInsets.fromLTRB(27.w, 25.h, 27.w, 0.h),
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
                  'My reminder',
                  size: 20,
                ),
                const SizedBox()
              ],
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 550.h,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < 10; i++)
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => const SetReminderScreen(),
                              ),
                            );
                          },
                          child: buildReminder()),
                  ],
                ),
              ),
            ),
            Container(
                height: 46.h,
                padding: EdgeInsets.all(10.h),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: secondaryTextColor.withOpacity(0.1), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(8.r))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    subTitleText('Add Reminder', size: 14),
                    Container(
                      height: 22.h,
                      width: 22.w,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius:
                              BorderRadius.all(Radius.circular(50.r))),
                      child: const Icon(
                        Icons.add,
                        color: white,
                        size: 18,
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
