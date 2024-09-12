import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/utils/app_image.dart';
import 'package:learning_management/utils/colors.dart';
import '../../../../../utils/app_icon.dart';

import '../../../widgets/backappbar.dart';
import '../../../widgets/small_container.dart';
import '../../../widgets/text1.dart';
import '../../../widgets/text2.dart';
import '../../course/views/module_screen.dart';
import '../../menu/widget/settings_card.dart';
import '../../resourse/views/resourse_screen.dart';
import '../certificate/views/certificate_screen.dart';

class MyCourseDetails extends StatelessWidget {
  const MyCourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const Backappbar(
        title: "Flutter App Development",
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
                  AppImage.mypic,
                  height: 90.0,
                  width: screenSize.width / 2.5,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    children: [
                      Text1(
                        text: "Flutter App Development",
                      ),
                      const SizedBox(height: 10.0),
                      const SmallContainer(
                        text: "Batch -35",
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Text(
              "Since your Progress is not as excepted despite your affort",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Next Batch- Wed, Aug 21, 2024",
              style: TextStyle(fontSize: 18.0, color: Colors.green),
            ),
            const Divider(
              height: 15,
              color: Colors.blue,
            ),
            const SizedBox(height: 10.0),
            SettingsCard(
              text: 'All Module Pre-Recored Video',
              text2: '410 videos',
              size1: 14.0,
              icon: AppIcon.pre_recorded,
              bgcolor: AppColor.black.withOpacity(0.1),
            ),
            const Divider(height: 15),
            const SizedBox(height: 10.0),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                _customtag('Modules', AppIcon.module, () {
                  Get.to(() => const ModuleScreen());
                }),
                _customtag('Assignment', AppIcon.assignment, () {
                  Get.to(() => const ResourseScreen());
                }),
                _customtag('Recourse', AppIcon.resourse, () {
                  Get.to(() => const ResourseScreen());
                }),
                _customtag('Certificate', AppIcon.certificate, () {
                  Get.to(() => const CertificateScreen());
                }),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            SettingsCard(
              text: 'Notice Board',
              icon: AppIcon.notice,
              bgcolor:
                  const Color.fromARGB(255, 234, 234, 238).withOpacity(0.1),
              border: Border.all(width: 0.1),
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
        height: 120,
        width: 140,
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
