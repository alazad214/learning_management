import 'package:flutter/material.dart';
import 'package:learning_management/app/modules/recoded%20courses/views/record_course_card.dart';
import 'package:learning_management/app/modules/free%20course/widgets/free_course_screen.dart';
import 'package:learning_management/app/modules/home/widgets/slider.dart';
import 'package:learning_management/app/modules/my%20course/views/my_course_card.dart';
import 'package:learning_management/app/modules/teacher/views/teacher_card.dart';


import '../../../../widgtets/custom_appbar.dart';
import '../../live course/views/live_course_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5.0),
            child: Column(
              children: [
                SizedBox(height: 15.0),
                Slider1(),
                FreeCourseScreen(),
                MyCourseCard(),
                SizedBox(height: 10),
                LiveCourseCard(),
                SizedBox(height: 10),
                RecordCourseCard(),
                TeacherCard()
              ],
            ),
          ),
        ));
  }
}
