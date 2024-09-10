import 'package:flutter/material.dart';
import 'package:learning_management/app/teacher/views/teacher_page_card.dart';

import '../../../widgets/backappbar.dart';

class TeacherScreen extends StatelessWidget {
  const TeacherScreen({super.key, this.appbar, this.data});
  final appbar;
  final data;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Backappbar(title: 'Out Teachers'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10.0),
          child: Column(
            children: [TeacherPageCard()],
          ),
        ),
      ),
    );
  }
}
