import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/style/text_style.dart';

import '../../../../utils/colors.dart';
import '../../../widgets/custom_see_all.dart';
import '../../course/widgets/course_utils.dart';
import 'my_course_details.dart';

class MyCourseCard extends StatelessWidget {
  const MyCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomSeeAll(
          title: 'My Courses',
          viewall: '',
        ),
        const SizedBox(height: 15.0),
        for (int i = 0; i < 4; i++)
          InkWell(
            onTap: () => Get.to(() => MyCourseDetails()),
            child: Container(
              height: 80.0,
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.only(bottom: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: AppColor.white.withOpacity(0.9),
                border: Border.all(width: 0.1),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  Image.asset(
                    courseUtils[i]['image'] ?? 'assets/default_image.png',
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 15.0),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          courseUtils[i]['title'] ?? 'Course Title',
                          style: AppTextStyle1(fontSize: 16.0),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          'Module - ${'45'}',
                          style: AppTextStyle2(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }
}
