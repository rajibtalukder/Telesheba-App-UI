import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/constants/colors.dart';
import 'package:telesheba_app/global_widgets/custom_texts.dart';
import 'package:telesheba_app/views/medicine/myreminder_screen.dart';
import 'package:telesheba_app/views/medicine/widgets/build_medicine.dart';
import 'package:telesheba_app/views/medicine/widgets/build_sort_medicine.dart';

class MedicineScreen extends StatefulWidget {
  const MedicineScreen({super.key});

  @override
  State<MedicineScreen> createState() => _MedicineScreenState();
}

class _MedicineScreenState extends State<MedicineScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgWhite,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(27.w, 25.h, 27.w, 10.h),
          child: ListView(
            children: [
              SizedBox(height: 20.h),
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
              subTitleText('Brands', size: 16),
              SizedBox(height: 20.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < 10; i++)
                      Padding(
                        padding: EdgeInsets.only(right: 15.w),
                        child: SizedBox(
                          height: 22.h,
                          width: 25.w,
                          child: Image.asset(
                            'assets/images/company.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  subTitleText('Search Results', size: 16),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (_) => const BuildSortMedicine());
                    },
                    child: Container(
                      height: 28.h,
                      width: 62.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: secondaryTextColor.withOpacity(0.1),
                              width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(4.r))),
                      child: Row(
                        children: [
                          SizedBox(width: 10.w),
                          SizedBox(
                            height: 9.h,
                            width: 11.w,
                            child: Image.asset(
                              'assets/images/menu_down.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 5.w),
                          subTitleText('Sort',
                              size: 12, fontWeight: FontWeight.w400)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              for (int i = 0; i < 5; i++)
                Column(
                  children: [
                    SizedBox(height: 15.h),
                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (_) => const Myreminder_screen(),
                        //   ),
                        // );
                      },
                      child: buildMedicine(),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

}
