import 'package:flutter/material.dart';
import 'package:learning_management/app/modules/course/live%20course/views/widgets/live_details_main.dart';
import 'package:learning_management/app/modules/course/live%20course/widgets/live_class_card.dart';
import 'package:learning_management/widgtets/text1.dart';
import '../../../../../widgtets/backappbar.dart';
import '../../../../../widgtets/small_container.dart';
import '../../../../../widgtets/text2.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: ListView(
          children: [
            LiveDetailsMain(
              image: data['image'],
              title: data['title'],
            ),
            const SizedBox(height: 20.0),
            Text(
              data['description'],
            ),
            const Divider(height: 15),
            const SizedBox(height: 10.0),
            const Wrap(
              spacing: 5.0,
              runSpacing: 5.0,
              children: [
                LiveClassCard(),
                LiveClassCard(),
                LiveClassCard(),
                LiveClassCard(),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text1(
                  text: 'Study Plan',
                ),
                Text2(
                  text: "${"30"}  Modules",
                ),
                Text2(
                  text: "${"45"}  Live Class",
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Container(
              clipBehavior: Clip.antiAlias,
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(width: 0.5)),
              child: ExpansionTile(
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
                subtitle:
                    const Text('learn a DART basic consept in this module'),
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
          ],
        ),
      ),
    );
  }

  _customtag(text, image, ontap) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 80,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(width: 0.1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 40,
            ),
            Text2(
              text: text,
            )
          ],
        ),
      ),
    );
  }
}
