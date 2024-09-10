import 'package:flutter/material.dart';
import 'package:learning_management/app/profile/views/password_screen.dart';
import 'package:learning_management/utils/app_image.dart';

import '../../../widgets/text1.dart';
import '../../../widgets/text2.dart';
import '../widgets/custom_profile_pic.dart';
import 'basic_information_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Profile',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings_outlined),
              onPressed: () {
                // Settings button functionality
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomProfilePic(image: AppImage.mypic),
              const SizedBox(height: 20.0),
              const Text1(text: 'Al Azad'),
              Text2(text: 'Flutter App Developer', color: Colors.black.withOpacity(0.6)),
              const SizedBox(height: 30.0),

              // Custom TabBar
              TabBar(
                isScrollable: true,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.withOpacity(0.2),
                ),
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: const [
                  Tab(text: "Basic Info"),
                  Tab(text: "Password"),
                ],
              ),

              const SizedBox(height: 20.0),
              const Expanded(
                child: TabBarView(
                  children: [
                    BasicInformationScreen(),
                    PasswordScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
