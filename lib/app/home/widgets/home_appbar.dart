import 'package:flutter/material.dart';
import 'package:learning_management/style/text_style.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hi, Al Azad',
                    style: AppTextStyle1(textColor: Colors.white)),
                Text("Let's start learning",
                    style: AppTextStyle2(textColor: Colors.white70)),
              ],
            ),
            Container(
                height: 50,
                width: 50,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset('assets/logo/tripti.jpg'))
          ],
        )
      ],
    );
  }
}
