import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/widgtets/text1.dart';
import 'package:learning_management/widgtets/text2.dart';

import '../app/modules/profile/views/profile_screen.dart';
import 'icon1.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      toolbarHeight: 90,
      leadingWidth: double.infinity,
      backgroundColor: Colors.orange,
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
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}
