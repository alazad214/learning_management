import 'package:flutter/material.dart';
import 'package:learning_management/widgtets/custom_appbar.dart';
import 'package:learning_management/widgtets/text1.dart';

import 'course_card.dart';
import 'course_utils.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key, this.appbar});
  final appbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar ?? const CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (int i = 0; i < courseUtils.length; i++)
                  CourseCard(
                    text: courseUtils[i]['title'],
                    course: courseUtils[i]['course'],
                    image: courseUtils[i]['image'],
                  )
              ],
            ),
          ),
        ));
  }
}
