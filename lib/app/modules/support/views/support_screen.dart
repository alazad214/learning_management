import 'package:flutter/material.dart';
import 'package:learning_management/app/section/menu%20section/widget/settings_card.dart';
import 'package:learning_management/utils/app_icon.dart';
import 'package:learning_management/widgtets/backappbar.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Backappbar(title: 'Support'),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SettingsCard(
              text: "Call us on ",
              text2: '+880 176355****',
              icon: AppIcon.call
            ),
            SettingsCard(
              text: "Mail us ",
              text2: 'alazadcmt@gmail.com',
              icon: AppIcon.email
            ),

          ],
        ),
      ),
    );
  }
}
