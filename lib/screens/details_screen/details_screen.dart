import 'package:auto_size_text/auto_size_text.dart';
import 'package:education_app/components/custom_rich_text.dart';
import 'package:education_app/components/rich_text_comment.dart';
import 'package:education_app/constants.dart';
import 'package:education_app/screens/details_screen/controller/details_controller.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    final _controller = Get.put(DetailsController());
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back, color: K.blackColor)),
        centerTitle: true,
        title: Text("Course 1",
            style: TextStyle(
                fontSize: 18.sp,
                color: K.blackColor,
                fontFamily: "Raleway-SemiBold")),
        elevation: 0,
        backgroundColor: K.whiteColor,
        actions: [
          const Icon(
            Icons.notifications,
            color: K.blackColor,
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Container(
              height: 191.h,
              decoration: BoxDecoration(
                  color: K.blackColor, borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: TabBar(
              labelStyle: TextStyle(
                  fontSize: 16.sp,
                  color: K.peColor,
                  fontFamily: "Raleway-SemiBold"),
              unselectedLabelStyle: TextStyle(
                  fontSize: 16.sp,
                  color: K.blackColor,
                  fontFamily: "Raleway-SemiBold"),
              indicatorColor: K.peColor,
              unselectedLabelColor: K.blackColor,
              labelColor: K.peColor,
              tabs: const [
                Tab(
                  text: "Overview",
                ),
                Tab(
                  text: "Content",
                ),
                Tab(
                  text: "Q & A",
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        'About this course',
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: K.blackColor,
                            fontFamily: "Raleway-SemiBold"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: AutoSizeText(
                          "Lorem ipsum dolor sit amet, consetetur sadipscing\nelitr, sed diam nonumy eirmod tempor invidunt ut\nlabore et dolore magna aliquyam erat, sed diam\nvoluptua. At vero eos et accusam et justo duo\ndolores et ea rebum.Stet clita kasd gubergren, no\nsea takimata sanctus est Lorem ipsum dolor sit amet",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: K.blackColor,
                              fontFamily: "Raleway-Regular"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24.h),
                        child: Divider(
                          indent: 16.w,
                          endIndent: 16.w,
                          color: K.greyColor,
                        ),
                      ),
                      ListView.builder(
                          itemCount: _controller.label.length,
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemBuilder: (ctx, index) => Padding(
                                padding: EdgeInsets.only(top: 8.h),
                                child: CustomRichText(
                                  rightLabel: _controller.data[index],
                                  leftLabel: _controller.label[index],
                                ),
                              ))
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (ctx, index) => ExpansionTileCard(
                      baseColor: const Color(0xffF3F3F3),
                      title: AutoSizeText("Chapter 1 : Basics",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: K.blackColor,
                              fontFamily: "Raleway-SemiBold")),
                      subtitle: AutoSizeText("0 / 10 | 4h 30 min",
                          style: TextStyle(
                              color: K.greyColor,
                              fontSize: 14.sp,
                              fontFamily: "Raleway-Regular")),
                      children: [
                        ListView.builder(
                            itemCount: 10,
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemBuilder: (ctx, index) => Padding(
                                padding: EdgeInsets.only(top: 8.h),
                                child: Column(
                                  children: [
                                    ListTile(
                                      contentPadding: const EdgeInsets.only(
                                          left: 0.0,
                                          right: 0.0,
                                          top: 0.0,
                                          bottom: 0.0),
                                      leading: Checkbox(
                                        onChanged: (v) {},
                                        value: false,
                                      ),
                                      title: Text(
                                          "1. Introduction to Present simplet",
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              fontFamily: "Raleway-SemiBold",
                                              color: K.blackColor)),
                                      subtitle: Text("30 min",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontFamily: "Raleway-Regular",
                                              color: K.blackColor)),
                                    ),
                                    const Divider()
                                  ],
                                ))),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'All questions in this course',
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: K.blackColor,
                              fontFamily: "Raleway-SemiBold"),
                        ),
                        ListView.builder(
                            itemCount: 4,
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemBuilder: (ctx, index) => Padding(
                                padding: EdgeInsets.only(top: 8.h),
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: const CircleAvatar(
                                        backgroundColor: K.peColor,
                                        radius: 22,
                                      ),
                                      title: Text("Next part",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: K.blackColor)),
                                      subtitle: const CustomRichTextComment(
                                        leftLabel: "Bassant",
                                        middleLabel: "Lesson 16",
                                        rightLabel: "1 month ago",
                                      ),
                                      trailing: const Icon(Icons.chat_bubble),
                                    ),
                                    const Divider()
                                  ],
                                ))),
                        Material(
                          borderRadius: BorderRadius.circular(25),
                          color: K.whiteColor,
                          shadowColor: K.greyColor,
                          elevation: 3,
                          child: SizedBox(
                            height: 60.h,
                            width: K.width - 16.w,
                            child: Row(
                              children: [
                                Expanded(
                                    child: TextField(
                                  cursorColor: K.greyColor,
                                  decoration: InputDecoration(
                                      hintText: "Ask a new question..",
                                      hintStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color: K.greyColor,
                                          fontFamily: "Raleway-SemiBold"),
                                      filled: true,
                                      fillColor: K.whiteColor,
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(25),
                                              bottomLeft: Radius.circular(25))),
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(25),
                                              bottomLeft:
                                                  Radius.circular(25)))),
                                )),
                                Container(
                                  width: 100.w,
                                  height: 60.h,
                                  child: Center(
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Publish",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: K.whiteColor,
                                                fontFamily: "Raleway-SemiBold"),
                                          ))),
                                  decoration: const BoxDecoration(
                                      color: K.peColor,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(25),
                                          bottomRight: Radius.circular(25))),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100.h,
                        )
                      ],
                    ),
                  ),
                )
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}
