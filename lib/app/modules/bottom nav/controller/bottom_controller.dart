import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:learning_management/app/modules/add%20to/views/add_to_screen.dart';

import '../../course/views/course_screen.dart';
import '../../home/views/home_screen.dart';
import '../../profile/views/profile_screen.dart';

class BottomController extends GetxController {
  // Observable index
  var currentIndex = 0.obs;

  // List of pages
  final List<Widget> pages = [
    const HomeScreen(),
    const CourseScreen(),
    const AddToScreen(),
    const ProfileScreen(),
  ];

  // Method to change index
  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
