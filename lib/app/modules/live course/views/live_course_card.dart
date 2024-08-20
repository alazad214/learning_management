import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/app/modules/course/views/course_utils.dart';

import '../../../../widgtets/backappbar.dart';
import '../../../../widgtets/custom_see_all.dart';
import '../../course/views/course_screen.dart';

class LiveCourseCard extends StatelessWidget {
  const LiveCourseCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSeeAll(
          title: 'Live Courses',
          color: Colors.redAccent,
          ontap: () => Get.to(() => const CourseScreen(
                appbar: Backappbar(
                  title: "Our Courses",
                ),
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < courseUtils.length; i++)
                InkWell(
                  child: Container(
                    height: 160.0,
                    width: 180,
                    clipBehavior: Clip.antiAlias,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        border: Border.all(width: 0.1),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(color: Colors.blue),
                          child: Image.asset(
                            courseUtils[i]['image'],
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          courseUtils[i]['title'],
                          style: const TextStyle(fontSize: 14.0),
                        ),
                        const Text(
                          'Rabbil hasan',
                          style:
                              TextStyle(fontSize: 12.0, color: Colors.black45),
                        ),
                        const SizedBox(height: 5.0),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Fee-',
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            Text(
                              '৳12000',
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
            ],
          ),
        ),

      ],
    );
  }
}
