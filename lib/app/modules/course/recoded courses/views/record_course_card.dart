import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/app/modules/course/recoded%20courses/views/record_course_details.dart';
import 'package:learning_management/app/modules/course/views/course_utils.dart';

import '../../live course/views/live_course_details.dart';
import '../../widgets/course_card.dart';

class RecordCourseCard extends StatelessWidget {
  const RecordCourseCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < courseUtils.length; i++)
            CourseCard(
              ontap: () {
                Get.to(() => LiveCourseDetails(
                      courseUtils[i],
                    ));
              },
              image: courseUtils[i]['image'],
              title: courseUtils[i]['title'],
              instuctorName: "Al Azad",
              sit: "Module- ${courseUtils[i]['course']}",
              courseFee: "5000",
            )
        ],
      ),
    );
  }
}
