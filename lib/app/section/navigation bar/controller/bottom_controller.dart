import 'package:get/get.dart';
import 'package:learning_management/app/section/recording/views/recording_screen.dart';
import '../../join class/views/join_class_screen.dart';
import '../../home section/views/home_screen.dart';
import '../../menu section/views/menu_screen.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  final pages = [HomeScreen(), ClassJoin(), RecordingScreen(), MenuScreen()];

  // Method to change the selected index
  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
