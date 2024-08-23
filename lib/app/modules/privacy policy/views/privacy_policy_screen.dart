import 'package:flutter/material.dart';
import 'package:learning_management/utils/colors.dart';
import 'package:learning_management/widgtets/backappbar.dart';
import 'package:learning_management/widgtets/text2.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Backappbar(title: 'Privacy Policy'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: Column(
            children: [
              Text2(
                text: "Privacy Policy for [LMS]",
                fontweight: FontWeight.bold,
                size: 25.0,
                maxline: 2,
                color: AppColor.primary,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(bottom: 15.0),
              ),
              Text(
                'Welcome to [Your LMS App Name]. We respect your privacy and are committed to protecting your personal data. This privacy policy will inform you about how we collect, use, and share your personal information when you use our app. \n'
                'We implement appropriate security measures to protect your personal data from unauthorized access, alteration, disclosure, or destruction. However, no security system is completely secure, and we cannot guarantee the absolute security of your data.\n'
                'Our app is not intended for use by children under the age of 13. We do not knowingly collect personal information from children under 13. If we discover that a child under 13 has provided us with personal data, we will delete it immediately.\n'
                'We may update this privacy policy from time to time. Any changes will be posted on this page with an updated revision date.',
              )
            ],
          ),
        ),
      ),
    );
  }
}
