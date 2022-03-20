import 'package:education_app/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FixedRichTextSignup extends StatelessWidget {
  const FixedRichTextSignup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "I Agree with ",
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff8E8E93)),
            children: [
          TextSpan(
            text: "Privacy",
            style: TextStyle(
                fontSize: 14.sp,
                color: K.blackColor,
                decoration: TextDecoration.underline),
          ),
          TextSpan(
            text: " and ",
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xff8E8E93),
            ),
          ),
          TextSpan(
            text: "Policy",
            style: TextStyle(
                fontSize: 14.sp,
                color: K.blackColor,
                decoration: TextDecoration.underline),
          ),
        ]));
  }
}
