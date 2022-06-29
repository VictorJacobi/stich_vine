import 'package:flutter/material.dart';
import 'package:interview_question/constants.dart';
import 'package:interview_question/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3000)).then((value) =>
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const WelcomeScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDesignColor,
      body: Center(
        child: Image.asset('images/plain_stich.png'),
      ),
    );
  }
}
