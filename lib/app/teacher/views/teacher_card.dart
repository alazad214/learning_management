import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/app/teacher/views/teacher_screen.dart';
import 'package:learning_management/utils/app_icon.dart';

import '../../../widgets/custom_see_all.dart';
import 'teacher_details.dart';
import '../utils/teacher_utils.dart';

class TeacherCard extends StatelessWidget {
  const TeacherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.0),
        CustomSeeAll(
            title: 'Our Instructor',
            ontap: () => Get.to(() => const TeacherScreen())),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < teacherUtils.length; i++)
                InkWell(
                  onTap: () {
                    Get.to(() => TeacherDetails(
                          data: teacherUtils[i],
                        ));
                  },
                  child: Container(
                      height: 230,
                      width: 170.0,
                      clipBehavior: Clip.antiAlias,
                      alignment: Alignment.bottomCenter,
                      margin: const EdgeInsets.only(
                          bottom: 10.0, top: 15, right: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          border: Border.all(width: 0.1),
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              image: AssetImage(teacherUtils[i]['image']),
                              fit: BoxFit.cover)),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        color: Colors.black54,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  teacherUtils[i]['name'],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                Text(
                                  teacherUtils[i]['position'],
                                  style: const TextStyle(
                                      color: Colors.white70, fontSize: 10.0),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AppIcon.fb,
                                  height: 25,
                                  width: 25,
                                ),
                                const SizedBox(width: 10.0),
                                Image.asset(
                                  AppIcon.insta,
                                  height: 25,
                                  width: 25,
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                )
            ],
          ),
        )
      ],
    );
  }
}
