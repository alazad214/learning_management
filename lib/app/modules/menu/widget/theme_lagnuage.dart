import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/theme_controller.dart';

class ThemeLagnuage extends StatelessWidget {
  ThemeLagnuage({super.key});
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(right: 10, left: 10),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(6.0),
            border: Border.all(width: 0.1)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => Text(
                      themeController.islanguage.value ? 'ENGLISH' : ' BANGLA',
                      style: const TextStyle(fontSize: 20),
                    )),
                Obx(() => Switch(
                      value: themeController.islanguage.value,
                      onChanged: themeController.languageSwitch,
                      activeColor: Colors.blue,
                      activeTrackColor: Colors.lightBlueAccent,
                      inactiveThumbColor: Colors.grey,
                      inactiveTrackColor: Colors.grey[300],
                    )),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => Text(
                      themeController.istheme.value
                          ? 'LIGHT MODE'
                          : ' DARK MODE',
                      style: const TextStyle(fontSize: 20),
                    )),
                Obx(() => Switch(
                      value: themeController.istheme.value,
                      onChanged: themeController.istheme.call,
                      activeColor: Colors.blue,
                      activeTrackColor: Colors.lightBlueAccent,
                      inactiveThumbColor: Colors.grey,
                      inactiveTrackColor: Colors.grey[300],
                    )),
              ],
            ),
          ],
        ));
  }
}
