import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'teacher_details.dart';
import '../utils/teacher_utils.dart';

class TeacherPageCard extends StatelessWidget {
  const TeacherPageCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        for (int i = 0; i < teacherUtils.length; i++)
          InkWell(
            onTap: () {
              Get.to(() => TeacherDetails(
                    data: teacherUtils[i],
                  ));
            },
            child: Container(
                height: 80,
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.only(bottom: 15.0, right: 10.0),
                padding: const EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  border: Border.all(width: 0.1),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 80,
                      width: screenSize.width / 5,
                      child: Image.asset(
                        teacherUtils[i]['image'],
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 15.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          teacherUtils[i]['name'],
                          style: const TextStyle(
                              color: Colors.black, fontSize: 16.0),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          teacherUtils[i]['position'],
                          style: const TextStyle(
                              color: Colors.black54, fontSize: 12.0),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_right)
                  ],
                )),
          )
      ],
    );
  }
}
