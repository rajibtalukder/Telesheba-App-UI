import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/views/doctor/doctors_screen.dart';
import 'package:telesheba_app/views/medicine/myreminder_screen.dart';
import 'package:telesheba_app/views/more/more_screen.dart';

import '../constants/colors.dart';
import 'home/home_screen.dart';

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({Key? key}) : super(key: key);

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  int _bottomNavIndex = 0;

  List<IconData> iconsTemp = [
    Icons.home_outlined,
    Icons.shopping_cart_outlined,
    Icons.favorite_outline,
    Icons.person_outline,
  ];

  List<IconData> icons = [];

  List<Widget> pages = [
    const HomeScreen(),
    const Myreminder_screen(),
    const DoctorScreen(), //please add here the required page
    const MoreScreen(), //please add here the required page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        extendBody: true,
        body: pages[_bottomNavIndex],
        bottomNavigationBar: Container(
          height: 95.h,
          color: white,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _bottomNavIndex,
            elevation: 10,
            selectedLabelStyle:
                const TextStyle(color: primaryColor, fontSize: 12),
            items: [
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20.h,
                  width: 20.w,
                  child: Image.asset('assets/images/home.png',
                      fit: BoxFit.contain),
                ),
                activeIcon: SizedBox(
                    height: 20.h,
                    width: 21.w,
                    child: Image.asset('assets/images/home.png',
                        fit: BoxFit.contain, color: primaryColor)),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20.h,
                  width: 20.w,
                  child: Image.asset('assets/images/medicine.png',
                      fit: BoxFit.contain),
                ),
                activeIcon: SizedBox(
                    height: 20.h,
                    width: 21.w,
                    child: Image.asset('assets/images/medicine.png',
                        fit: BoxFit.contain, color: primaryColor)),
                label: 'Medecine',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20.h,
                  width: 20.w,
                  child: Image.asset('assets/images/doctor.png',
                      fit: BoxFit.contain),
                ),
                activeIcon: SizedBox(
                    height: 20.h,
                    width: 21.w,
                    child: Image.asset('assets/images/doctor.png',
                        fit: BoxFit.contain, color: primaryColor)),
                label: 'Doctor',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20.h,
                  width: 20.w,
                  child: Image.asset('assets/images/more.png',
                      fit: BoxFit.contain),
                ),
                activeIcon: SizedBox(
                    height: 20.h,
                    width: 21.w,
                    child: Image.asset('assets/images/more.png',
                        fit: BoxFit.contain, color: primaryColor)),
                label: 'More',
              ),
            ],
            onTap: (index) {
              setState(() {
                _bottomNavIndex = index;
              });
            },
          ),
        ));
  }
}
