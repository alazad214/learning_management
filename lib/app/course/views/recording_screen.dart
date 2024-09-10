import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:learning_management/app/course/views/record_course_card.dart';
import 'package:learning_management/app/course/views/video_details_screen.dart';

class RecordingScreen extends StatelessWidget {
  const RecordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: AlignedGridView.count(
            padding: const EdgeInsets.all(12.0),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 1,
            itemCount: 2,
            itemBuilder: (ctx, index) {
              return RecordCourseCard();
            },
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 5.0,
          ),
        ),
      ),
    );
  }
}
