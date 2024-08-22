import 'package:flutter/material.dart';
import 'package:learning_management/widgtets/backappbar.dart';
import 'package:learning_management/widgtets/text1.dart';
import '../../../../../widgtets/text2.dart';

class FreeCourseDetails extends StatelessWidget {
  const FreeCourseDetails({super.key});

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
                        child: IconButton(
                            onPressed: () {},
                            icon: const CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Icon(
                                  Icons.play_arrow_rounded,
                                  color: Colors.yellow,
                                ))),
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
