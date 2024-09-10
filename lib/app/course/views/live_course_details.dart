import 'package:flutter/material.dart';

import 'package:learning_management/utils/app_icon.dart';

import '../../../widgets/backappbar.dart';
import '../../../widgets/row_icon_text.dart';
import '../widgets/botton_sheet.dart';
import '../widgets/instructor_card.dart';
import '../widgets/live_class_card.dart';
import '../widgets/live_details_main.dart';
import '../widgets/review_card.dart';
import '../widgets/study_plan_card.dart';

class LiveCourseDetails extends StatelessWidget {
  final data;
  const LiveCourseDetails(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Backappbar(
          title: data['title'],
        ),
        body: Padding(
          padding: const EdgeInsets.only(
              left: 15.0, top: 15.0, right: 15.0, bottom: 150.0),
          child: ListView(
            children: <Widget>[
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
                'যারা শূন্য থেকে App ডেভেলপমেন্ট শিখতে চান তাদের জন্য।',
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
        bottomSheet: BottonSheet());
  }
}
