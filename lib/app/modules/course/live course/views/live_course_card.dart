import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/app/modules/course/views/course_utils.dart';
import 'package:learning_management/app/modules/course/widgets/course_card.dart';
import 'live_course_details.dart';

class LiveCourseCard extends StatelessWidget {
  const LiveCourseCard({
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
              sit: "Sit- ${courseUtils[i]['course']}",
              courseFee: "5000",
            )
        ],
      ),
    );
  }
}
