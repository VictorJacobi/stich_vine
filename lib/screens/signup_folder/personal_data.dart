import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_question/widgets/created_textfield.dart';
import 'package:interview_question/widgets/drop_down_gender_widget.dart';
import 'package:interview_question/widgets/purple_button.dart';
import 'package:interview_question/constants.dart';

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
            cursorColor: kDesignColor,
            style: const TextStyle(color: Colors.black),
            controller: genderTextController,
            onTap: () {
              setState(() {
                genderTextController.text = 'Not selected';
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
                borderSide: BorderSide(color: kDesignColor, width: 1.0),
              ),
            ),
          ),
        ),
        showSelection?SizedBox(
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
        ):const SizedBox.shrink(),
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