import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning_management/app/modules/menu/widget/settings_card.dart';
import 'package:learning_management/app/modules/menu/widget/settings_utils.dart';
import 'package:learning_management/app/modules/menu/widget/theme_lagnuage.dart';
import 'package:learning_management/widgtets/custom_appbar.dart';
import 'package:learning_management/widgtets/text2.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
            child: Column(
              children: [
                ThemeLagnuage(),
                const SizedBox(height: 15),
                for (int i = 0; i < settingsUtils.length; i++)
                  SettingsCard(
                    icon: settingsUtils[i]['icon'],
                    text: settingsUtils[i]['text'],
                    text2: settingsUtils[i]['text2'],
                    ontap: () {
                      Get.to(settingsUtils[i]["page"]);
                    },
                  ),
                const SizedBox(height: 20),
                const Text2(
                  text: 'v.2.99.0',
                )
              ],
            ),
          ),
        ));
  }
}
