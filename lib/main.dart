import 'package:flutter/material.dart';
import 'package:interview_question/screens/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, Widget? myWidget) => MaterialApp(
        theme: ThemeData(),
        home: const SplashScreen(),
      ),
      designSize: const Size(375, 812),
    );
  }
}
