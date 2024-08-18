import 'package:flutter/material.dart';

import '../utils/teacher_utils.dart';

class TeacherCard extends StatelessWidget {
  const TeacherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < teacherUtils.length; i++)
            InkWell(
              child: Container(
                  height: 200,
                  width: 160.0,
                  clipBehavior: Clip.antiAlias,
                  alignment: Alignment.bottomCenter,
                  margin:
                      const EdgeInsets.only(bottom: 10.0, top: 15, right: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      border: Border.all(width: 0.1),
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: AssetImage(teacherUtils[i]['image']),
                          fit: BoxFit.cover)),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.black54,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          teacherUtils[i]['name'],
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          teacherUtils[i]['skill'],
                          style:
                              TextStyle(color: Colors.white70, fontSize: 8.0),
                        ),
                      ],
                    ),
                  )),
            )
        ],
      ),
    );
  }
}
