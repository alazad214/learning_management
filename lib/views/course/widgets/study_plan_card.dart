import 'package:flutter/material.dart';

import '../../../widgets/small_container.dart';
import '../../../widgets/text1.dart';
import '../../../widgets/text2.dart';

class StudyPlanCard extends StatelessWidget {
  const StudyPlanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SmallContainer(text: 'Study Plan'),
            Text2(
              text: "${"30"}  Modules",
            ),
            Text2(
              text: "${"45"}  Live Class",
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        for (int i = 0; i < 4; i++)
          Container(
            clipBehavior: Clip.antiAlias,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(width: 0.5)),
            child: Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                subtitle:
                    const Text('learn a DART basic consept in this module'),
                tilePadding: EdgeInsets.zero,
                childrenPadding: EdgeInsets.zero,
                title: Row(
                  children: [
                    SmallContainer(
                      text: 'Module 1',
                    ),
                    Spacer(),
                    Text1(
                      text: "Dart Basic",
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10.0,
                    )
                  ],
                ),
                trailing: const Icon(Icons.keyboard_arrow_down_rounded),
                children: [
                  const Divider(),
                  for (int i = 0; i < 5; i++)
                    const ListTile(
                      title: Text('Day 1'),
                      subtitle: Text('Introduction to DART for beginners'),
                    ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
