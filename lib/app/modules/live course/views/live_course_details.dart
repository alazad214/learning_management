import 'package:flutter/material.dart';
import 'package:learning_management/app/modules/live%20course/views/widgets/live_details_main.dart';
import 'package:learning_management/app/modules/live%20course/widgets/study_plan_card.dart';
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
            const SizedBox(height: 20.0),

            const Divider(height: 25),
            const SizedBox(height: 15),
            const Wrap(
              spacing: 7.0,
              runSpacing: 7.0,
              alignment: WrapAlignment.center,
              children: [
                LiveClassCard(),
                LiveClassCard(),
                LiveClassCard(),
                LiveClassCard(),
              ],
            ),
            StudyPlanCard(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                children: [
                  RowIconText(
                      icon: Icons.person_2_outlined, text: "Instructor"),
                  const Divider(height: 25),
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: AppColor.blue2,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border(
                            left: BorderSide(
                              color: Colors.blue,
                              width: 2.0,
                            ),
                          )),
                      child: Column(
                        children: [
                          for (int i = 0; i < 2; i++)
                            Container(
                                height: 80,
                                width: double.infinity,
                                clipBehavior: Clip.antiAlias,
                                alignment: Alignment.bottomCenter,
                                margin: const EdgeInsets.only(
                                    bottom: 15.0, right: 10.0),
                                padding: const EdgeInsets.only(right: 10.0),
                                decoration: BoxDecoration(
                                  color: AppColor.white.withOpacity(0.9),
                                  border: Border.all(width: 0.1),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 80,
                                      width: screenSize.width / 5,
                                      child: Image.asset(
                                        'assets/images/teacher/kibriya.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(width: 15.0),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Golam Kibria",
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.0),
                                        ),
                                        const SizedBox(height: 5.0),
                                        Text(
                                          "Flutter Developer",
                                          style: const TextStyle(
                                              color: Colors.black54,
                                              fontSize: 12.0),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.arrow_right)
                                  ],
                                )),
                        ],
                      ))
                ],
              ),
            ),
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
            const SizedBox(height: 20),
            RowIconText(icon: Icons.reviews, text: "Review"),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                children: [
                  const Divider(height: 25),
                  for (int i = 0; i < 5; i++)
                    Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(15.0),
                        margin: EdgeInsets.only(bottom: 10.0),
                        decoration: BoxDecoration(
                            color: AppColor.blue2,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(width: 0.1)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text1(
                              text: 'Al Azad',
                            ),
                            Divider(height: 10.0),
                            Text(
                                'I was able to learn very well by taking the course. Aliullah Bhai taught me very well and any problem I had, I joined the support class and got support. Thanks to the SMS team, I am very happy with the course.')
                          ],
                        ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
