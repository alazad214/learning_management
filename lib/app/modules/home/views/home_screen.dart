import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:learning_management/app/modules/course/views/course_card.dart';
import 'package:learning_management/app/modules/home/widgets/slider.dart';
import 'package:learning_management/widgtets/custom_card.dart';
import 'package:learning_management/widgtets/icon1.dart';
import 'package:learning_management/widgtets/text1.dart';
import 'package:learning_management/widgtets/text2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          centerTitle: true,
          leading: const Icon(
            Icons.sort,
            size: 30,
          ),
          actions: const [
            Icon1(),
          ],
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5.0),
            child: Column(
              children: [
                Slider1(),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text1(text: "Categories"),
                    Text2(
                      text: "View All",
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [CourseCard()],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
