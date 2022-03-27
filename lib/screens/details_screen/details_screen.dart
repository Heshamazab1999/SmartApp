import 'package:education_app/constants.dart';
import 'package:education_app/screens/details_screen/controller/details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(DetailsController());
    return Scaffold(
      appBar: AppBar(
        leading: const Center(
          child: Icon(Icons.arrow_back, color: K.blackColor),
        ),
        centerTitle: true,
        title: Text("Course 1",
            style: TextStyle(
                fontSize: 18.sp,
                color: K.blackColor,
                fontFamily: "Raleway-SemiBold")),
        elevation: 0,
        backgroundColor: K.whiteColor,
        actions:  [

          const Icon(
            Icons.notifications,
            color: K.blackColor,
          ),
          SizedBox(width: 20.w,),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                height: 191.h,
                decoration: BoxDecoration(
                    color: K.blackColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            // SizedBox(
            //   height: 70.h,
            //   width: K.width,
            //   child: Center(
            //     child: ListView.separated(
            //
            //         padding: EdgeInsets.symmetric(vertical: 16.h),
            //         separatorBuilder: (BuildContext context, int index) {
            //           return SizedBox(
            //             width: 56.w,
            //           );
            //         },
            //         shrinkWrap: true,
            //         scrollDirection: Axis.horizontal,
            //         itemCount: 3,
            //         physics: const NeverScrollableScrollPhysics(),
            //         itemBuilder: (ctx, index) => Column(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Obx(
            //                   () => GestureDetector(
            //                       onTap: () {
            //                         _controller.checkIndex(index);
            //                       },
            //                       child: Text(
            //                         _controller.label[index],
            //                         style: TextStyle(
            //                             fontSize: 16.sp,
            //                             color: _controller.check.value == index
            //                                 ? const Color(0xFF5E53E0)
            //                                 : K.blackColor,
            //                             fontFamily: "Raleway-SemiBold"),
            //                       )),
            //                 ),
            //
            //                 Obx(() => _controller.check.value == index
            //                     ? Container(
            //                         width: 99,
            //                         height: 3,
            //                         color: Color(0xFF5E53E0),
            //                       )
            //                     : const SizedBox())
            //               ],
            //             )),
            //
            //   ),
            // ),
            // if(_controller.check.value==0):
          ],
        ),
      ),
    );
  }
}
