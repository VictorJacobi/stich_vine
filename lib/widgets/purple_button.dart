import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PurpleButton extends StatelessWidget {
  const PurpleButton({Key? key,this.height,this.width,this.text,this.fontWeight,this.radius,this.onPressed}) : super(key: key);
  final String? text;
  final double? width;
  final double? height;
  final FontWeight? fontWeight;
  final double? radius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(
        text!,
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 15.sp),
      ),
      color: Color(0xFF781596),
      height: height,
      minWidth: width,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius!),
      ),
    );
  }
}
