import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/app/modules/notification/views/notification_page.dart';
import 'package:learning_management/utils/app_image.dart';
import 'package:learning_management/widgtets/text1.dart';
import 'package:learning_management/widgtets/text2.dart';
import '../app/modules/profile/views/profile_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: preferredSize.height,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        decoration: const BoxDecoration(
          color: Colors.blue,
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 4, spreadRadius: 1),
          ],
        ),
        child: Row(
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
                    AppImage.mypic,
                    fit: BoxFit.cover,
                  )),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text1(
                  text: "Al Azad",
                  color: Colors.white,
                ),
                Text2(
                  text: "ID-452585",
                  color: Colors.white70,
                )
              ],
            ),
            const Spacer(),
            Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: InkWell(
                  onTap: () {
                    Get.to(() => const NotificationPage());
                  },
                  child: const Icon(
                    Icons.notifications,
                    size: 28,
                    color: Colors.white,
                  ),
                ))
          ],
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(130);
}
