import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/app/modules/certificate/views/certificate_screen.dart';
import 'package:learning_management/app/modules/resourse/views/resourse_screen.dart';
import 'package:learning_management/utils/app_icon.dart';
import '../../../../../widgtets/backappbar.dart';
import '../../../../../widgtets/text1.dart';
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  data['image'],
                  height: 90.0,
                  width: screenSize.width / 2.5,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    children: [
                      Text1(
                        text: data['title'],
                      ),
                      const Text2(
                        text: 'Module- 16',
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Text(
              data['description'],
            ),
            const Divider(height: 15),
            const SizedBox(height: 10.0),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _customtag('Modules', AppIcon.module, () {
                  Get.to(() => const ModuleScreen());
                }),
                _customtag('Assignment', AppIcon.assignment, () {
                  Get.to(() => const ResourseScreen());
                }),
                _customtag('Recorded', AppIcon.record, () {}),
                _customtag('Recourse', AppIcon.resourse, () {
                  Get.to(() => const ResourseScreen());
                }),
                _customtag('Certificate', AppIcon.certificate, () {
                  Get.to(() => const CertificateScreen());
                }),
              ],
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 100,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.blue.withOpacity(0.1)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0))),
        child: const Center(
          child: Text(
            'This is a bottom sheet',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
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
