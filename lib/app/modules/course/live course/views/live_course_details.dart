import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/app/modules/certificate/views/certificate_screen.dart';
import 'package:learning_management/app/modules/course/live%20course/views/widgets/live_details_main.dart';
import 'package:learning_management/app/modules/course/live%20course/widgets/live_class_card.dart';
import 'package:learning_management/app/modules/menu/widget/settings_card.dart';
import 'package:learning_management/app/modules/resourse/views/resourse_screen.dart';
import 'package:learning_management/utils/app_icon.dart';
import 'package:learning_management/widgtets/text1.dart';
import '../../../../../widgtets/backappbar.dart';
import '../../../../../widgtets/text2.dart';
import '../../../course module/views/module_screen.dart';

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
              children: [
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
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: const ExpansionTile(
                title: Text('Expansion Tile 1'),
                subtitle: Text('Tap to expand'),
                leading: Text("1"),
                trailing: Text("1"),
                children: [
                  ListTile(
                    title: Text('Child 1'),
                  ),
                  ListTile(
                    title: Text('Child 2'),
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
