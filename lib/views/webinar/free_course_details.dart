import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/style/text_style.dart';
import 'package:learning_management/utils/colors.dart';
import 'package:learning_management/widgets/small_button.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../widgets/backappbar.dart';
import '../../widgets/text1.dart';
import '../../widgets/text2.dart';
import '../../business logic/controllers/free_course_controler.dart';

class FreeCourseDetails extends StatelessWidget {
  FreeCourseDetails({super.key});
  final controller = Get.put(VideoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary.withOpacity(0.6),
      appBar: Backappbar(title: 'Free Webinar'),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (_, index) {
            return Container(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    /// Course Images....
                    Container(
                      height: 140.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/course/ostad_flutter.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(height: 10),

                    ///Course Name...
                    Text('Flutter Apps Development with Rabbil Hasan.',
                        style: AppTextStyle2()),

                    ///Course Name...
                    Text('ফ্লটার অ্যাপস ডেভেলপমেন্ট শিখুন এক কোর্সেই',
                        style: AppTextStyle1(
                            textColor: Colors.black, fontSize: 18.0)),
                    SizedBox(height: 10),

                    ///Webinar Time...
                    Row(
                      children: [
                        Icon(Icons.date_range),
                        Text(' Friday, 16 Septembar, 09:00 PM',
                            style: AppTextStyle2(textColor: Colors.blue)),
                      ],
                    ),
                    SizedBox(height: 10),
                    SmallButton(
                      text: 'See Details',
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
