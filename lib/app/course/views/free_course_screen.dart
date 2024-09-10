import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/utils/app_icon.dart';
import 'package:learning_management/utils/colors.dart';
import '../controller/free_course_controler.dart';
import 'free_course_details.dart';

class FreeCourseScreen extends StatelessWidget {
  FreeCourseScreen({super.key});
  final videoController = Get.put(VideoController());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
        height: 120.0,
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(
          bottom: 15.0,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            color: AppColor.primary,
            border: Border.all(width: 0.1),
            borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "ফ্রি -তে শিখুন",
                  style: TextStyle(color: AppColor.white, fontSize: 22),
                ),
                InkWell(
                  onTap: () => Get.to(() => FreeCourseDetails()),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Row(
                      children: [
                        Text(
                          "ফ্রি -তে শিখুন",
                          style: TextStyle(color: AppColor.white, fontSize: 14),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: AppColor.white,
                          size: 20.0,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Image.asset(
              AppIcon.computer,
              width: screenSize.width / 5,
            )
          ],
        ));
  }
}
