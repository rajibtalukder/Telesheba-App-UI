import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/constants/colors.dart';
import 'package:telesheba_app/views/home/details_diagonestics.dart';
import 'package:telesheba_app/views/home/widgets/build_diagonestic.dart';

import '../../global_widgets/custom_texts.dart';

class HospitalsAndDiagonestics extends StatelessWidget {
  const HospitalsAndDiagonestics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgWhite,
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
                    'Hospitals & Diagnostics',
                    size: 20,
                  ),
                  SizedBox()
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 51.h,
                    width: 260.w,
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
                          hintStyle: TextStyle(
                              color: secondaryTextColor, fontSize: 14.sp),
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.search,
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
                  Container(
                    height: 51.h,
                    width: 51.w,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(8.r))),
                    child: Image.asset(
                      'assets/images/menu.png',
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.h),
              subTitleText('Nearby Diagonistics', size: 15),
              SizedBox(
                height: 590.h,
                child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
