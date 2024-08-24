import 'package:flutter/material.dart';
import 'package:learning_management/app/modules/live%20course/widgets/live_course_card.dart';
import 'package:learning_management/widgtets/custom_appbar.dart';
import '../../../modules/free course/views/free_course_screen.dart';
import '../../../modules/recoded courses/views/record_course_card.dart';

class ClassJoin extends StatelessWidget {
  const ClassJoin({super.key, this.appbar});
  final appbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar ?? const CustomAppBar(),
        body: Padding(
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
