import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:interview_question/constants.dart';
import 'package:interview_question/screens/signup_folder/signup_tab.dart';
import 'package:interview_question/widgets/purple_button.dart';
import '../widgets/created_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(left: 45.w, right: 45.w, top: 105.h, bottom: 30.h),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 39.w, bottom: 61.h, right: 39.w),
              child: Column(
                children: [
                  Image.asset(
                    'images/colored_stich.png',
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 17.h),
                    child: Text(
                      'Welcome Back!',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 24.sp),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 226.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CreatedTextFields(
                    onChanged: (value) {},
                    height: 57.h,
                    width: 285.w,
                    labelText: 'Email Address',
                  ),
                  SizedBox(
                    height: 57.h,
                    width: 285.w,
                    child: Card(
                      elevation: 0.2,
                      child: TextField(
                        obscureText: !_isVisible ? false : true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 15.w),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color:
                                      const Color(0xFF000000).withOpacity(0.12),
                                  width: 1.0),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: kDesignColor, width: 1.0),
                            ),
                            label: Text(
                              'Password',
                              style: TextStyle(
                                  color: const Color(0xFF777777),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  _isVisible = !_isVisible;
                                });
                              },
                              child: Icon(
                                !_isVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: kDesignColor,
                              ),
                            )),
                      ),
                    ),
                  ),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: kDesignColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  PurpleButton(
                    height: 50.h,
                    width: 285.w,
                    text: 'Log in',
                    fontWeight: FontWeight.w500,
                    radius: 8.r,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 208.h, left: 30.w, right: 31.w),
              child: Column(
                children: [
                  Text(
                    'Or Continue using',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF8D8B8B)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.h,
                    ),
                    child: Image.asset(
                      'images/google_image.png',
                      height: 16.h,
                      width: 16.w,
                    ),
                  ),
                  Row(
                    children: [
                      Text('Don’t have an account? ',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF8D8B8B))),
                      TextButton(
                        child: Text('Sign up',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: kDesignColor)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
