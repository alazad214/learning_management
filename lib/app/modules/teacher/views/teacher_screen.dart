import 'package:flutter/material.dart';
import 'package:learning_management/widgtets/backappbar.dart';

import '../utils/teacher_utils.dart';

class TeacherScreen extends StatelessWidget {
  const TeacherScreen({super.key, this.appbar});
  final appbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Backappbar(title: 'Out Teachers'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10.0),
          child: Column(
            children: [
              for (int i = 0; i < teacherUtils.length; i++)
                Container(
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
                        Image.asset(
                          teacherUtils[i]['image'],
                          fit: BoxFit.cover,
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
                              teacherUtils[i]['skill'],
                              style: const TextStyle(
                                  color: Colors.black54, fontSize: 12.0),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(Icons.arrow_right)
                      ],
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
