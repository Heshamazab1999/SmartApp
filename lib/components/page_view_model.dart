import 'package:education_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoardingModel {
  final String? label;
  final String? image;
  final String? description;

  BoardingModel({this.label, this.image, this.description});
}

Widget pageViewScreen(BoardingModel model) => Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(
          model.image!,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          model.label!,
          style: TextStyle(
              fontSize: 28.sp,
              fontWeight: FontWeight.w500,
              color: K.whiteColor,
              fontFamily: "Raleway"),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          model.description!,
          style: TextStyle(
              fontSize: 18.sp,
              fontFamily: "Raleway",
              fontWeight: FontWeight.w500,
              color: K.whiteColor),
          textAlign: TextAlign.center,
        ),
      ],
    );
