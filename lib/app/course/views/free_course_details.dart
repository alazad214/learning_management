import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../widgets/backappbar.dart';
import '../../../widgets/text1.dart';
import '../../../widgets/text2.dart';
import '../controller/free_course_controler.dart';

class FreeCourseDetails extends StatelessWidget {
   FreeCourseDetails({super.key});
  final controller=Get.put(VideoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Backappbar(title: 'Free Webinar'),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (_, index) {
                return Container(
                  height: 210.0,
                  clipBehavior: Clip.antiAlias,
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      border: Border.all()),
                  child: Column(
                    children: [
                      Container(
                        height: 140.0,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/course/ostad_flutter.jpg'),
                                fit: BoxFit.cover)),
                        child:  YoutubePlayer(
                          controller: controller.youtubePlayerController,
                          showVideoProgressIndicator: false,
                          progressIndicatorColor: Colors.red,
                          thumbnail: Image.asset('assets/images/course/ostad_flutter.jpg', fit: BoxFit.cover),
                          onReady: () {
                            print('Player is ready.');
                          },
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Column(
                          children: [
                            const Text1(
                              text:
                                  'Mastering Conversion Rate Optimization(CRO',
                              color: Colors.blue,
                            ),
                            const SizedBox(height: 3.0),
                            const Text2(
                              text: 'Mastering Conversion Rate Optimization',
                              color: Colors.black38,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              })),
    );
  }
}
