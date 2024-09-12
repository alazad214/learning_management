import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/utils/app_image.dart';
import 'package:learning_management/utils/colors.dart';
import 'package:learning_management/widgets/text1.dart';
import 'package:learning_management/widgets/text2.dart';

import '../utils/app_config.dart';
import '../views/notification/notification_page.dart';
import '../views/profile/views/profile_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: preferredSize.height,
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        decoration: BoxDecoration(
          color: AppColor.primary,
          boxShadow: [
            BoxShadow(color: AppColor.black3, blurRadius: 2, spreadRadius: 0.1),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.to(() => ProfileScreen());
              },
              child: Container(
                  height: 45,
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.only(left: 15.0),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent.withOpacity(0.2),
                      shape: BoxShape.circle),
                  child: Image.asset(
                    AppConfig.appImage,
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text1(
                  text: "Al Azad",
                  color: AppColor.white,
                ),
                Text2(
                  text: "ID-452585",
                  color: AppColor.white2,
                )
              ],
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  Get.to(() => const NotificationPage());
                },
                icon: Icon(
                  Icons.notifications,
                  size: 28,
                  color: AppColor.white,
                ))
          ],
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(110);
}
