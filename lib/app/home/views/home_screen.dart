import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widgtets/backappbar.dart';
import '../../../../widgtets/custom_appbar.dart';
import '../../../../widgtets/custom_see_all.dart';

import '../../course/views/free_course_screen.dart';
import '../../course/views/join_class_screen.dart';
import '../../course/views/record_course_card.dart';
import '../../course/widgets/live_course_card.dart';
import '../../my course/views/buy_course_card.dart';
import '../../teacher/views/teacher_card.dart';
import '../widgets/slider.dart';

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
                FreeCourseScreen(),
                const BuyCourseCard(),
                const Divider(),
                const SizedBox(height: 10),
                CustomSeeAll(
                  title: 'Live Courses',
                  color: Colors.redAccent,
                  ontap: () => Get.to(() => const ClassJoin(
                        appbar: Backappbar(
                          title: "Our Courses",
                        ),
                      )),
                ),
                const SizedBox(height: 10.0),
                const LiveCourseCard(),
                const SizedBox(height: 10),
                CustomSeeAll(
                  title: 'Recoded Courses',
                  color: Colors.green,
                  ontap: () => Get.to(() => const ClassJoin(
                        appbar: Backappbar(
                          title: "Our Courses",
                        ),
                      )),
                ),
                const SizedBox(height: 10.0),
                const RecordCourseCard(),
                const TeacherCard()
              ],
            ),
          ),
        ));
  }
}
