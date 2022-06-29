import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class DropDownGenderWidget extends StatelessWidget {
  const DropDownGenderWidget({Key? key, this.onTap, this.value})
      : super(key: key);
  final void Function()? onTap;
  final String? value;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 300.w,
        height: 50.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 5.w),
              child: Container(
                height: 5.h,
                width: 5.w,
                decoration: const BoxDecoration(
                    color: Colors.black, shape: BoxShape.circle),
              ), //refactor: refactoring widgets into separate classes
            ),
            Text(value!),
          ],
        ),
      ),
    );
  }
}
