import 'package:education_app/components/page-view_model.dart';
import 'package:education_app/components/register_button.dart';
import 'package:education_app/constants.dart';
import 'package:education_app/screens/onboarding_screen/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(OnBoardingController());

    return Scaffold(
      backgroundColor: K.mainColor,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller.boardController,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>
                  pageViewScreen(_controller.labels[index]),
              itemCount: _controller.labels.length,
              onPageChanged: (int index) {
                _controller.isFirstFunction(index);
                _controller.isLastFunction(index);
              },
            ),
          ),
          box(),
          SmoothPageIndicator(
              controller: _controller.boardController, // PageController
              count: _controller.labels.length,
              effect: SwapEffect(
                dotColor: Colors.grey,
                dotHeight: 16.h,
                activeDotColor: K.whiteColor,
                dotWidth: 16.w,
                spacing: 5,
              ), // your preferred effect
              onDotClicked: (index) {}),
          box(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => _controller.isLast.value
                    ? RegisterButton(
                        color: K.secondaryColor,
                        label: "Login",
                        onTap: () {},
                      )
                    : GestureDetector(
                        onTap: () {
                          // if (_controller.isFirst.value) {
                          //   Get.offAll(const LoginScreen());
                          // }
                        },
                        child: Text(
                          "Skip",
                          style:
                              TextStyle(fontSize: 18.sp, color: K.whiteColor),
                        ))),
                Obx(() => _controller.isLast.value
                    ? RegisterButton(
                        color: const Color(0xFFC5C5C5),
                        onTap: () {},
                        label: "SignUp",
                      )
                    : ElevatedButton(
                        onPressed: () {
                          _controller.boardController.nextPage(
                              duration: const Duration(milliseconds: 800),
                              curve: Curves.fastLinearToSlowEaseIn);
                        },
                        child: const Icon(Icons.arrow_forward,
                            color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          primary: K.secondaryColor,
                          shape: const CircleBorder(),
                          fixedSize: Size(56.w, 56.h),
                        ),
                      )),
              ],
            ),
          ),
          Obx(() => _controller.isLast.value
              ? Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "Browse",
                    style: TextStyle(
                        fontSize: 18.sp,
                        color: K.whiteColor,
                        fontWeight: FontWeight.w500),
                  ),
                )
          //
              : Container()),
          box()
        ],
      ),
    );
  }

  Widget box() => SizedBox(
        height: 40.h,
      );
}
