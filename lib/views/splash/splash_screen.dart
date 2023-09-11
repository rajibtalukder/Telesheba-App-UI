import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telesheba_app/views/splash/walkthrough_screen1.dart';

import '../../constants/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: AnimatedSplashScreen(
        splash: Center(
            child: SizedBox(
              height:280.h,
              width: 320.w,
              child: Image.asset("assets/images/splash.png"),
            ),
        ),
        nextScreen:  const WalkthroughScreen1(),
        splashIconSize: 1000.sp,
        splashTransition: SplashTransition.fadeTransition,
        duration: 2000,
        animationDuration: const Duration(seconds: 1),
      ),
    );
  }
}
