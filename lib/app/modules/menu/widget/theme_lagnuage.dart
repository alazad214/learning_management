import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/theme_controller.dart';

class ThemeLagnuage extends StatelessWidget {
  ThemeLagnuage({super.key});
  final ThemeController themeController = Get.put(ThemeController());

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
                Text(
                  ' BANGLA',
                  style: const TextStyle(fontSize: 20),
                ),
                Switch(
                  value: false,
                  onChanged: themeController.isDarkMode,
                  activeColor: Colors.blue,
                  activeTrackColor: Colors.lightBlueAccent,
                  inactiveThumbColor: Colors.grey,
                  inactiveTrackColor: Colors.grey[300],
                )
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  themeController.isDarkMode.value
                      ? 'LIGHT MODE'
                      : ' DARK MODE',
                  style: const TextStyle(fontSize: 20),
                ),
                InkWell(
                  onTap: () {
                    themeController.toggoleTheme();
                  },
                  child: Switch(
                    value: themeController.isDarkMode.value,
                    onChanged: (value) => themeController.toggoleTheme(),
                    activeColor: Colors.blue,
                    activeTrackColor: Colors.lightBlueAccent,
                    inactiveThumbColor: Colors.grey,
                    inactiveTrackColor: Colors.grey[300],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
