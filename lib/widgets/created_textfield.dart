import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatedTextFields extends StatefulWidget {
  const CreatedTextFields({Key? key, this.width, this.height,this.onChanged,this.labelText,this.onTap})
      : super(key: key);
  final double? width;
  final double? height;
  final void Function(String)? onChanged;
  final String? labelText;
  final void Function()? onTap;

  @override
  State<CreatedTextFields> createState() => _CreatedTextFieldsState();
}

class _CreatedTextFieldsState extends State<CreatedTextFields> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.2,
      child: TextField(
        cursorHeight: 17.h,
        cursorWidth: 1.w,
        cursorColor: Color(0xFF781596),
        onChanged: widget.onChanged,
        onTap: widget.onTap,
        decoration: InputDecoration(
          label: Text(widget.labelText!,style: TextStyle(color: Color(0xFF777777),fontSize: 12.sp,fontWeight: FontWeight.w400),),
          contentPadding: EdgeInsets.only(left: 15.w),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF000000).withOpacity(0.12), width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF781596), width: 1.0),
          ),
        ),
      ),
    );
  }
}
