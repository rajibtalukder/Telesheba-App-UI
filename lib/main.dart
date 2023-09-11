
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telesheba_app/views/splash/splash_screen.dart';

import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: _buildTheme(Brightness.light),
              home: const Scaffold(
               body: SplashScreen(),
                //body: SigninScreen()
              ));
        });
  }
}

ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(
    brightness: brightness,
    primarySwatch: primarySwatch,
  );

  return baseTheme.copyWith(
    textTheme: GoogleFonts.titilliumWebTextTheme(),
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
  );
}
