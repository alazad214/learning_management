import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_appbar.dart';
import '../../../widgets/text2.dart';
import '../widget/settings_card.dart';
import '../widget/settings_utils.dart';
import '../widget/theme_lagnuage.dart';

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
                //LANGUAGE AND THEMEDATA CARD
                ThemeLagnuage(),
                const SizedBox(height: 15),

                //OTHERS CARD
                for (int i = 0; i < settingsUtils.length; i++)
                  SettingsCard(
                    icon: settingsUtils[i]['icon'],
                    text: settingsUtils[i]['text'],
                    text2: settingsUtils[i]['text2'],
                    ontap: () {
                      Get.to(settingsUtils[i]["page"]);
                    },
                  ),

                //APP VERSION
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
