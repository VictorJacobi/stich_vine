import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({Key? key, this.headerText, this.labelText})
      : super(key: key);
  final String? headerText;
  final String? labelText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          headerText!,
          style: TextStyle(
              fontSize: 28.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
        Padding(
          padding: EdgeInsets.only(top: 26.h),
          child: Text(labelText!,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white)),
        ),
      ],
    );
  }
}
