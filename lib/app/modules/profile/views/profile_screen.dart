import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/app/modules/profile/views/basic_information_screen.dart';
import 'package:learning_management/app/modules/profile/views/password_screen.dart';
import 'package:learning_management/widgtets/backappbar.dart';
import 'package:learning_management/widgtets/text1.dart';
import 'package:learning_management/widgtets/text2.dart';

import '../widgets/profile_listile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const Backappbar(title: 'Profile'),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Profile image--->
              Container(
                height: 90,
                width: 90,
                clipBehavior: Clip.antiAlias,
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.blueAccent),
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        image: AssetImage("assets/images/icon/mypic.jpg"),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(height: 20.0),
              const Text1(text: 'Al Azad'),
              const Text2(text: 'id- 5412414', color: Colors.black54),
              const SizedBox(height: 20.0),
              const TabBar(
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

              const SizedBox(height: 20.0),
              const Flexible(
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
