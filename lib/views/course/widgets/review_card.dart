import 'package:flutter/material.dart';
import 'package:learning_management/utils/colors.dart';

import '../../../widgets/row_icon_text.dart';
import '../../../widgets/text1.dart';


class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        RowIconText(icon: Icons.reviews, text: "Review"),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: [
              for (int i = 0; i < 2; i++)
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
    );
  }
}
