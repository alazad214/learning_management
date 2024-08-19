import 'package:flutter/material.dart';

import '../widgets/profile_listile.dart';

class BasicInformationScreen extends StatelessWidget {
  const BasicInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //User name
            ProfileListtile(
              icon: Icons.person,
              title: "Al Azad",
            ),

            //User Email
            ProfileListtile(
              icon: Icons.email,
              title: "alazad214@gmail.com",
            ),

            //User phone Number
            ProfileListtile(
              icon: Icons.phone,
              title: "01760******",
            ), //User phone Number
            ProfileListtile(
              icon: Icons.view_module,
              title: "Flutter App Development",
            ),
          ],
        ),
      ),
    );
  }
}
