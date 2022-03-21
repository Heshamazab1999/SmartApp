import 'package:education_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key, this.onchange}) : super(key: key);
  final Function(String)? onchange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.w, right: 17.w, top: 16.h),
      child: Material(
        elevation: 3,
        shadowColor: K.greyColor,
        borderRadius: BorderRadius.circular(15),
        child: SizedBox(
          height: 45.h,
          child: TextField(
            onChanged: onchange,
            cursorColor: K.blackColor,
            style: TextStyle(
                color: K.blackColor, fontSize: 16.sp, fontFamily: "Raleway"),
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(),
                fillColor: K.whiteColor,
                filled: true,
                prefixIcon: Icon(Icons.search, color: K.greyColor, size: 25.sp),
                hintText: "Search",
                hintStyle: TextStyle(
                    fontSize: 17.sp, color: K.greyColor, fontFamily: "Raleway"),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15))),
          ),
        ),
      ),
    );
  }
}
