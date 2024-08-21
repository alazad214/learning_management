import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning_management/app/modules/course/views/course_utils.dart';
import 'package:learning_management/app/modules/recoded%20courses/views/record_course_details.dart';

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
            InkWell(
              onTap: (){
                Get.to(()=>RecordCourseDetails(courseUtils[i]));
              },
              child: Container(
                height: 160.0,
                width: 180,
                clipBehavior: Clip.antiAlias,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    border: Border.all(width: 0.1),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.blue),
                      child: Image.asset(
                        courseUtils[i]['image'],
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      courseUtils[i]['title'],
                      style: const TextStyle(fontSize: 14.0),
                    ),
                    const Text(
                      'Rabbil hasan',
                      style: TextStyle(fontSize: 12.0, color: Colors.black45),
                    ),
                    const SizedBox(height: 5.0),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Fee-',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          '৳12000',
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
