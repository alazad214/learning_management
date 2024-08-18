import 'package:get/get.dart';
import 'package:learning_management/app/modules/add%20to/views/add_to_screen.dart';
import 'package:learning_management/app/modules/course/views/course_screen.dart';
import 'package:learning_management/app/modules/home/views/home_screen.dart';
import '../../menu/views/menu_screen.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  final pages = [HomeScreen(), CourseScreen(), AddToScreen(), MenuScreen()];

  // Method to change the selected index
  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
