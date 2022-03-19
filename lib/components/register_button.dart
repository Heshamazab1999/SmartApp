import 'package:education_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key, this.onTap, this.label, this.color})
      : super(key: key);
  final String? label;
  final Function()? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.w,
      height: 48.h,
      child: TextButton(
        onPressed: onTap,
        child: Text(label!,
            style: TextStyle(
                color: K.whiteColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500)),
        style: TextButton.styleFrom(backgroundColor: color),
      ),
    );
  }
}
