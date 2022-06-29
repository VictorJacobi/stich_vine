import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_question/constants.dart';
import 'personal_data.dart';
import 'measurement_info.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 62.h, right: 22.w, left: 25.w),
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              const SignupAppBar(
                title: 'New Customer',
              ),
              Padding(
                padding: EdgeInsets.only(top: 24.h),
                child: TabBar(
                    labelPadding: EdgeInsets.only(bottom: 10.h),
                    indicatorColor: kDesignColor,
                    indicatorWeight: 3.5,
                    labelColor: kDesignColor,
                    unselectedLabelColor: const Color(0xFF919197),
                    labelStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    tabs: [
                      Text(
                        "PERSONAL DATA",
                        style: TextStyle(
                            color: kDesignColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 11.sp),
                      ),
                      Text(
                        "MEASUREMENT INFO",
                        style: TextStyle(
                            color: const Color(0xFF777777),
                            fontWeight: FontWeight.w500,
                            fontSize: 11.sp),
                      )
                    ]),
              ),
              const Expanded(
                child: TabBarView(
                  children: [PersonalData(), MeasurementInfo()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignupAppBar extends StatelessWidget {
  const SignupAppBar({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      child: Row(
        children: [
          InkWell(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20.sp,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            width: 19.w,
          ),
          Text(
            '$title',
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

