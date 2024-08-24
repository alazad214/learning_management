import 'package:flutter/material.dart';
import 'package:learning_management/app/modules/live%20course/widgets/instructor_card.dart';
import 'package:learning_management/app/modules/live%20course/widgets/live_details_main.dart';
import 'package:learning_management/app/modules/live%20course/widgets/review_card.dart';
import 'package:learning_management/app/modules/live%20course/widgets/study_plan_card.dart';
import 'package:learning_management/utils/app_icon.dart';
import 'package:learning_management/utils/colors.dart';
import 'package:learning_management/widgtets/row_icon_text.dart';
import 'package:learning_management/widgtets/text1.dart';
import '../../../../../widgtets/backappbar.dart';
import '../widgets/live_class_card.dart';

class LiveCourseDetails extends StatelessWidget {
  final data;
  const LiveCourseDetails(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Backappbar(
        title: data['title'],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: ListView(
          children: [
            //LIVE DETAILS MAIN-->
            LiveDetailsMain(
              image: data['image'],
              title: data['title'],
            ),

            //CARD SECTION
            Wrap(
              spacing: 7.0,
              runSpacing: 7.0,
              alignment: WrapAlignment.center,
              children: [
                LiveClassCard(
                  icon: AppIcon.support,
                  text: 'Supports',
                ),
                LiveClassCard(
                  icon: AppIcon.project,
                  text: '5+ Projects',
                ),
                LiveClassCard(
                  icon: AppIcon.project,
                  text: 'LMS Pro Batch',
                ),
                LiveClassCard(
                  text: 'Proccess traking ',
                ),
                Divider(height: 20.0),
              ],
            ),

            //STUDY PLAN SECTION
            StudyPlanCard(),

            //INSTRUCTOR
            InstructorCard(),

            RowIconText(icon: Icons.view_module, text: "About This Course"),
            const SizedBox(height: 15),
            Text(
              data['description'],
            ),
            const SizedBox(height: 15),
            RowIconText(
                icon: Icons.view_module, text: "Who is the course for?"),

            const SizedBox(height: 15),
            Text(
              'যারা শূন্য থেকে এফ ডেভেলপমেন্ট শিখতে চান তাদের জন্য।',
            ),
            const SizedBox(height: 15),
            RowIconText(icon: Icons.view_module, text: "Requirements"),

            const SizedBox(height: 15),
            Text(
              'Minimum 8 GB RAM and 64 bit laptop or computer',
            ),

            ReviewCard()
          ],
        ),
      ),
    );
  }
}
