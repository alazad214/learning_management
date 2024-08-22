import 'package:flutter/material.dart';
import 'package:learning_management/widgtets/custom_appbar.dart';

import '../free course/widgets/free_course_screen.dart';
import '../live course/views/live_course_card.dart';
import '../recoded courses/views/record_course_card.dart';


class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key, this.appbar});
  final appbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar ?? const CustomAppBar(),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                FreeCourseScreen(),
                LiveCourseCard(),
                SizedBox(height: 20.0),
                RecordCourseCard()
              ],
            ),
          ),
        ));
  }
}
