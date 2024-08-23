import 'package:get/get.dart';
import 'package:learning_management/app/modules/home%20section/views/home_screen.dart';

import '../../assignments section/views/add_to_screen.dart';
import '../../course section/views/course_screen.dart';
import '../../menu section/views/menu_screen.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  final pages = [HomeScreen(), CourseScreen(), AddToScreen(), MenuScreen()];

  // Method to change the selected index
  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
