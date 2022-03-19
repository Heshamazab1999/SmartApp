import 'package:education_app/components/page_view_model.dart';
import 'package:education_app/controller/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends BaseController {
  final boardController = PageController();
  final isLast = false.obs;
  final isFirst = true.obs;
  final List<BoardingModel> labels = [
    BoardingModel(
        label: "Ready to learn?",
        description:
            "Classes has a lots of courses\nfrom programming to design",
        image: "assets/images/image1.svg"),
    BoardingModel(
        label: "Grow your education",
        description: "Grow your education and level up\nwith E-learning",
        image: "assets/images/image2.svg"),
    BoardingModel(
        label: "Anytime, anywhere",
        description:
            "Enjoy the process off online education \nin a place and time of your choice",
        image: "assets/images/image3.svg"),
  ];

  isLastFunction(int index) {
    if (index == labels.length - 1) {
      isLast.value = true;
    } else {
      isLast.value = false;
    }
  }

  isFirstFunction(int index) {
    if (index == labels.length - 3) {
      isFirst.value = true;
    } else {
      isFirst.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    isFirstFunction(0);
  }
}
