import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/app/modules/profile/views/basic_information_screen.dart';
import 'package:learning_management/app/modules/profile/views/password_screen.dart';
import 'package:learning_management/app/modules/profile/widgets/custom_profile_pic.dart';
import 'package:learning_management/utils/app_image.dart';
import 'package:learning_management/widgtets/backappbar.dart';
import 'package:learning_management/widgtets/text1.dart';
import 'package:learning_management/widgtets/text2.dart';

import '../widgets/profile_listile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: Backappbar(title: 'Profile'),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Profile image--->
              CustomProfilePic(
                image: AppImage.mypic,
              ),
              SizedBox(height: 20.0),
              Text1(text: 'Al Azad'),
              Text2(text: 'Flutter App Development', color: Colors.black54),
              SizedBox(height: 20.0),

              //Custom Tabbar
              TabBar(
                  isScrollable: true,
                  labelStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                  tabAlignment: TabAlignment.start,
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  dividerColor: Colors.transparent,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.blue,
                  tabs: [
                    Tab(
                      text: "Basic Info",
                    ),
                    Tab(
                      text: "Password",
                    ),
                  ]),

              SizedBox(height: 20.0),
              Flexible(
                flex: 1,
                child: TabBarView(children: [
                  BasicInformationScreen(),
                  PasswordScreen(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
