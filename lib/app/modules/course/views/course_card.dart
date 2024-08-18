import 'package:flutter/material.dart';
import 'package:learning_management/app/modules/course/views/course_utils.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 120.0,
        width: 150.0,
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
            color: Colors.blueAccent.withOpacity(0.2),
            borderRadius: BorderRadius.circular(4.0)),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: []),
      ),
    );
  }
}
