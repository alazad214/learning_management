import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:learning_management/style/text_style.dart';
import 'package:learning_management/views/profile/views/profile_screen.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
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
              InkWell(
                onTap: () => Get.to(() => ProfileScreen()),
                child: Container(
                    height: 50,
                    width: 50,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/logo/tripti.jpg')),
              )
            ],
          )
        ],
      ),
    );
  }
}
