import 'package:flutter/material.dart';
import 'package:learning_management/app/modules/teacher/views/teacher_page_card.dart';
import 'package:learning_management/widgtets/backappbar.dart';

import '../utils/teacher_utils.dart';

class TeacherScreen extends StatelessWidget {
  const TeacherScreen({super.key, this.appbar});
  final appbar;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Backappbar(title: 'Out Teachers'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10.0),
          child: Column(
            children: [
              TeacherPageCard()
            ],
          ),
        ),
      ),
    );
  }
}
