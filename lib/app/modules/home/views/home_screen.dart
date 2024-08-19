import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning_management/app/modules/course/views/course_card.dart';
import 'package:learning_management/app/modules/course/views/course_screen.dart';
import 'package:learning_management/app/modules/course/views/course_utils.dart';
import 'package:learning_management/app/modules/free%20course/widgets/free_course_screen.dart';
import 'package:learning_management/app/modules/home/widgets/slider.dart';
import 'package:learning_management/app/modules/teacher/views/teacher_card.dart';
import 'package:learning_management/app/modules/teacher/views/teacher_screen.dart';
import 'package:learning_management/widgtets/backappbar.dart';
import 'package:learning_management/widgtets/custom_see_all.dart';
import 'package:learning_management/widgtets/text1.dart';
import 'package:learning_management/widgtets/text2.dart';

import '../../../../widgtets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5.0),
            child: Column(
              children: [
                const SizedBox(height: 15.0),
                const Slider1(),
                const SizedBox(height: 20),
                const FreeCourseScreen(),
                const SizedBox(height: 20),
                CustomSeeAll(
                  title: 'Categories',
                  ontap: () => Get.to(() => const CourseScreen(
                        appbar: Backappbar(
                          title: "Our Courses",
                        ),
                      )),
                ),
                const SizedBox(height: 10),
                for (int i = 0; i < 3; i++)
                  CourseCard(
                    text: courseUtils[i]['title'],
                    course: courseUtils[i]['course'],
                    image: courseUtils[i]['image'],
                  ),
                const Divider(),
                const SizedBox(height: 10),
                CustomSeeAll(
                    title: 'Our Teachers',
                    ontap: () => Get.to(() => const TeacherScreen())),
                const TeacherCard()
              ],
            ),
          ),
        ));
  }
}
