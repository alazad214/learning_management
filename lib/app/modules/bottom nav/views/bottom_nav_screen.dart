import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../controller/bottom_controller.dart';

class BottomNavScreen extends StatelessWidget {
  BottomNavScreen({super.key});
  final controller = Get.put(BottomController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      bottomNavigationBar: Obx(() {
        return SalomonBottomBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeIndex,
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.work),
              title: const Text("Course"),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.shopping_cart_rounded),
              activeIcon: const Icon(Icons.home),
              title: const Text("Card"),
              selectedColor: Colors.purple,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        );
      }),
      body: Obx(() {
        return controller.pages[controller.currentIndex.value];
      }),
    );
  }
}
