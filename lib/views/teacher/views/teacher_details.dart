import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';

import '../../../widgets/backappbar.dart';
import '../../../widgets/button1.dart';
import '../../../widgets/text1.dart';
import '../../../widgets/text2.dart';

class TeacherDetails extends StatelessWidget {
  final data;
  const TeacherDetails({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Backappbar(
        title: '${data['name']}- profile',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(width: 0.1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 110,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Image.asset(
                            data['image'],
                            height: 100.0,
                            width: screenSize.width / 4,
                            fit: BoxFit.cover,
                          )),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text1(text: data['name']),
                            Text2(
                              text: data['position'],
                              color: Colors.blueAccent,
                              alignment: Alignment.centerLeft,
                            ),
                            Text(
                              data['skill'],
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 11, color: Colors.black54),
                              maxLines: 3,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Divider(),
                  const Text2(
                    text: 'About',
                    alignment: Alignment.centerLeft,
                    size: 20.0,
                  ),
                  const ReadMoreText(
                    'I will professional graphic designer in adobe illustrator adobe photoshop.I will professional graphic designer in adobe illustrator adobe photoshop.',
                    trimLines: 3,
                    colorClickableText: Colors.blue,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Read more',
                    trimExpandedText: '  Read less',
                    moreStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                    lessStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15.0),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(width: 0.1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text2(
                    text: 'Achievement',
                    alignment: Alignment.centerLeft,
                    size: 20.0,
                  ),
                  Text(
                      'This document describes all the steps that any aspiring achievement developer must follow before getting Developer status. These requirement are also a checklist for Code Reviewers (developers who inspect the code of new developers')
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            const Wrap(
              children: [
                Button1(
                  text: 'Contact',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
