import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/app/home/widgets/home_appbar.dart';
import '../../../utils/colors.dart';
import '../../../widgets/backappbar.dart';
import '../../../widgets/custom_see_all.dart';
import '../../course/views/free_course_screen.dart';
import '../../course/views/join_class_screen.dart';
import '../../course/views/record_course_card.dart';
import '../../course/widgets/live_course_card.dart';
import '../../my course/views/my_course_card.dart';
import '../../teacher/views/teacher_card.dart';
import '../widgets/slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context)
        .size; // Use of MediaQuery.of instead of MediaQuery.sizeOf

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height / 4.5,
              decoration: BoxDecoration(
                color: AppColor.primary,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///Custom Home AppBar...
                  HomeAppBar(),
                  SizedBox(height: 20.0),

                  ///Custom Slider...
                  Slider1(),

                  ///Free Course...
                  FreeCourseScreen(),
                  Divider(color: Colors.blueAccent),
                  SizedBox(height: 10.0),

                  ///Custom My Course...
                  MyCourseCard(),
                  Divider(color: Colors.blueAccent),
                  SizedBox(height: 10),

                  ///Custom Live Course...
                  CustomSeeAll(
                    title: 'Live Courses',
                    color: Colors.redAccent,
                    ontap: () => Get.to(() => ClassJoin()),
                  ),
                  SizedBox(height: 10),
                  LiveCourseCard(),
                  SizedBox(height: 50),

                  ///Custom Recorded Course...
                  CustomSeeAll(
                    title: 'Recorded Courses',
                    color: Colors.green,
                    ontap: () => Get.to(() => ClassJoin()),
                  ),
                  SizedBox(height: 10),
                  RecordCourseCard(),

                  ///Teacher List
                  SizedBox(height: 30),
                  TeacherCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
