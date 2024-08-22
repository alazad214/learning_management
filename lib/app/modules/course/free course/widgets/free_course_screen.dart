import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/utils/app_icon.dart';

import 'free_course_details.dart';

class FreeCourseScreen extends StatelessWidget {
  const FreeCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
        height: 120.0,
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(
          bottom: 25.0,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            color: Colors.red,
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
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                InkWell(
                  onTap: () => Get.to(() => const FreeCourseDetails()),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Row(
                      children: [
                        Text(
                          "ফ্রি -তে শিখুন",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
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
