import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/views/home/blood_bank.dart';

import '../../../constants/colors.dart';
import '../../../global_widgets/custom_texts.dart';
import '../../../global_widgets/normal_button.dart';

class BuildSortMedicine extends StatefulWidget {
  const BuildSortMedicine({super.key});

  @override
  State<BuildSortMedicine> createState() => _BuildSortMedicineState();
}

class _BuildSortMedicineState extends State<BuildSortMedicine> {
  int? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
      height: 280.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          subTitleText('Sort By', size: 16),
          SizedBox(height: 20.h),
          Row(
            children: [
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
              subTitleText('Price (High-Low)',
                  size: 12, fontWeight: FontWeight.w400),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
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
              subTitleText('Price (High-Low)',
                  size: 12, fontWeight: FontWeight.w400),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
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
              subTitleText('Price (High-Low)',
                  size: 12, fontWeight: FontWeight.w400),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
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
              subTitleText('Price (High-Low)',
                  size: 12, fontWeight: FontWeight.w400),
            ],
          ),
          SizedBox(height: 20.h),
          normalButton('Apply', textSize: 16, onPressed: () {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (_) => BloodBank()));
          })
        ],
      ),
    );
  }
}
