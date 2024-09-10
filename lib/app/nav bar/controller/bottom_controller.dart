import 'package:get/get.dart';
import '../../course/views/join_class_screen.dart';
import '../../course/views/recording_screen.dart';
import '../../home/views/home_screen.dart';
import '../../menu/views/menu_screen.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  final pages = [HomeScreen(), ClassJoin(), RecordingScreen(), MenuScreen()];

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
