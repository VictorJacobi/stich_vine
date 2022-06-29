import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_question/widgets/created_textfield.dart';
import 'package:interview_question/widgets/purple_button.dart';
import '../widgets/drop_down_gender_widget.dart';

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
                    indicatorColor: const Color(0xFF781596),
                    indicatorWeight: 3.5,
                    labelColor: const Color(0xFF781596),
                    unselectedLabelColor: const Color(0xFF919197),
                    labelStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    tabs: [
                      Text(
                        "PERSONAL DATA",
                        style: TextStyle(
                            color: const Color(0xFF781596),
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

class PersonalData extends StatefulWidget {
  const PersonalData({Key? key}) : super(key: key);

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  final TextEditingController genderTextController = TextEditingController();
  int index = 0;
  bool showSelection = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CreatedTextFields(
          width: 328,
          height: 63.h,
          onChanged: (value) {},
          labelText: 'Full name',
          onTap: () {
            setState(() {
              showSelection = false;
            });
          },
        ),
        Card(
          elevation: 0,
          child: TextField(
            cursorColor: const Color(0xFF781596),
            style: const TextStyle(color: Colors.black),
            controller: genderTextController,
            onTap: () {
              setState(() {
                showSelection = true;
              });
            },
            decoration: InputDecoration(
              prefix: Padding(
                padding: EdgeInsets.only(left: 10.w, right: 5.w),
                child: Container(
                  height: 5.h,
                  width: 5.w,
                  decoration: const BoxDecoration(
                      color: Colors.black, shape: BoxShape.circle),
                ),
              ),
              label: Text(
                'Gender',
                style: TextStyle(
                    color: const Color(0xFF777777),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400),
              ),
              contentPadding: EdgeInsets.only(left: 15.w),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: const Color(0xFF000000).withOpacity(0.12),
                    width: 1.0),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF781596), width: 1.0),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 328.w,
          height: 200.h,
          child: Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DropDownGenderWidget(
                    onTap: () {
                      genderTextController.text = 'Not selected';
                    },
                    value: 'Not selected',
                  ),
                  DropDownGenderWidget(
                    onTap: () {
                      genderTextController.text = 'Male';
                    },
                    value: 'Male',
                  ),
                  DropDownGenderWidget(
                    onTap: () {
                      genderTextController.text = 'Female';
                    },
                    value: 'Female',
                  ),
                ],
              ),
            ),
          ),
        ),
        CreatedTextFields(
          width: 328,
          height: 63.h,
          onChanged: (value) {},
          labelText: 'Email Address',
          onTap: () {
            setState(() {
              showSelection = false;
            });
          },
        ),
        CreatedTextFields(
          width: 328,
          height: 63.h,
          onChanged: (value) {},
          labelText: 'Phone Number',
          onTap: () {
            setState(() {
              showSelection = false;
            });
          },
        ),
        Padding(
          padding: EdgeInsets.only(top: 38.h, left: 13.w, right: 13.w),
          child: PurpleButton(
            text: 'Next',
            fontWeight: FontWeight.w500,
            height: 48.h,
            width: 303.w,
            radius: 0.r,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class MeasurementInfo extends StatelessWidget {
  const MeasurementInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
