
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/constants/colors.dart';
import 'package:telesheba_app/global_widgets/custom_texts.dart';
import 'package:telesheba_app/views/more/balance_point_screen.dart';
import 'package:telesheba_app/views/more/profile_screen.dart';
import 'package:telesheba_app/views/more/qr_screen.dart';
import 'package:telesheba_app/views/more/upgrade_plan_screen.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.all(30.h),
        child: Column(
          children: [
            SizedBox(height: 60.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => ProfileScreen()));
                  },
                  child: Container(
                    height: 142.h,
                    width: 142.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: bgWhite.withOpacity(0.8),
                            spreadRadius: 3,
                            blurRadius: 8,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(4.r))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 55.h,
                          width: 55.w,
                          child: Image.asset('assets/images/setting.png'),
                        ),
                        subTitleText('Settings', size: 15),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => QRScreen()));
                  },
                  child: Container(
                    height: 142.h,
                    width: 142.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: bgWhite.withOpacity(0.8),
                            spreadRadius: 3,
                            blurRadius: 8,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(4.r))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 55.h,
                          width: 55.w,
                          child: Image.asset('assets/images/qr.png'),
                        ),
                        subTitleText('Scan OR', size: 15),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => UpgradePlanScreen()));
                  },
                  child: Container(
                    height: 142.h,
                    width: 142.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: bgWhite.withOpacity(0.8),
                            spreadRadius: 3,
                            blurRadius: 8,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(4.r))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 55.h,
                          width: 55.w,
                          child: Image.asset('assets/images/win.png'),
                        ),
                        subTitleText('Upgrade Plan', size: 15),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => BalancePointScreen()));
                  },
                  child: Container(
                    height: 142.h,
                    width: 142.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: bgWhite.withOpacity(0.8),
                            spreadRadius: 3,
                            blurRadius: 8,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(4.r))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 55.h,
                          width: 55.w,
                          child: Image.asset('assets/images/win.png'),
                        ),
                        subTitleText('Balance', size: 15),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
