import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/app/modules/profile/views/password_management_screen.dart';
import '../../../../utils/app_config.dart';
import '../../../business logic/controllers/profile_controller.dart';
import '../widgets/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  final controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(AppConfig.appImage),
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(height: 15),
                Obx(() => Text(
                      controller.userName.value,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                SizedBox(height: 5),
                Obx(() => Text(
                      controller.userEmail.value,
                      style: TextStyle(color: Colors.grey[700]),
                    )),
                SizedBox(height: 20),
                ProfileCard(
                    title: 'My Course',
                    icon: Icons.info_outline_rounded,
                    onTap: () => controller.editProfile()),
                ProfileCard(
                    title: 'Account Management',
                    icon: Icons.settings,
                    onTap: () => controller.editProfile()),
                ProfileCard(
                  title: 'Password Management',
                  icon: Icons.lock,
                  onTap: () {
                    Get.to(() => PasswordManagementScreen());
                  },
                ),
                ProfileCard(
                  title: 'Dark Mode',
                  icon: Icons.dark_mode,
                  trailing: Switch(
                    value: Get.isDarkMode,
                    onChanged: (value) {
                      Get.changeThemeMode(
                        value ? ThemeMode.dark : ThemeMode.light,
                      );
                    },
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
