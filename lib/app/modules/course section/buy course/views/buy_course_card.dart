import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../widgtets/custom_see_all.dart';
import '../../views/course_utils.dart';
import 'buy_course_details.dart';

class BuyCourseCard extends StatelessWidget {
  const BuyCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSeeAll(
          title: 'My Courses',
          viewall: '',
        ),
        const SizedBox(height: 15.0),
        for (int i = 0; i < 2; i++)
          InkWell(
            onTap: () {
              Get.to(() => BuyCourseDetails());
            },
            child: Container(
              height: 80.0,
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.only(bottom: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  border: Border.all(width: 0.1),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Row(
                children: [
                  Image.asset(
                    courseUtils[i]['image'],
                    height: 70,
                    width: 70,
                  ),
                  const SizedBox(width: 15.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        courseUtils[i]['title'],
                        style: TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Course - ',
                            style: TextStyle(
                                fontSize: 14.0, color: Colors.black45),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            courseUtils[i]['title'],
                            style: TextStyle(fontSize: 14.0),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                        ],
                      ),
                      const Divider(),
                    ],
                  )
                ],
              ),
            ),
          )
      ],
    );
  }
}
