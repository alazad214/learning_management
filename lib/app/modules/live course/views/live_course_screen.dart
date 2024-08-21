import 'package:flutter/material.dart';
import 'package:learning_management/app/modules/live%20course/views/live_course_card.dart';
import 'package:learning_management/widgtets/backappbar.dart';

class LiveCourseScreen extends StatelessWidget {
  final data;
  const LiveCourseScreen({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: Backappbar(
          title: data['title'],
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Wrap(
                children: [LiveCourseCard()],
              )
            ],
          ),
        ));
  }
}
