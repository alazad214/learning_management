import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/app/modules/profile/views/profile_screen.dart';
import 'package:learning_management/widgtets/text1.dart';
import 'package:learning_management/widgtets/text2.dart';
import '../../../../widgtets/icon1.dart';
import '../controller/bottom_controller.dart';

class BottomNavScreen extends StatelessWidget {
  BottomNavScreen({super.key});
  final BottomNavController bottomNavController =
      Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 90,
        leadingWidth: double.infinity,
        leading: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.to(() => const ProfileScreen());
              },
              child: Container(
                  height: 45,
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent.withOpacity(0.2),
                      shape: BoxShape.circle),
                  child: Image.asset(
                    'assets/images/icon/mypic.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text1(text: "Al Azad"),
                Text2(
                  text: "Flutter Development",
                  color: Colors.grey,
                )
              ],
            )
          ],
        ),
        actions: const [
          Icon1(),
        ],
      ),
      body: Obx(() =>
          bottomNavController.pages[bottomNavController.selectedIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: bottomNavController.selectedIndex.value,
            elevation: 50,
            iconSize: 30.0,
            selectedItemColor: Colors.blueAccent,
            unselectedIconTheme: const IconThemeData(color: Colors.black54),
            unselectedItemColor: Colors.black54,
            showUnselectedLabels: true,
            onTap: (index) {
              bottomNavController.changeIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_call_outlined),
                label: 'Course',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Card',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'More',
              ),
            ],
          )),
    );
  }
}
