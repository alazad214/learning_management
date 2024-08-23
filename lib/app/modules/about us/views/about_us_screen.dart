import 'package:flutter/material.dart';
import 'package:learning_management/app/modules/user%20auth/widget/auth_fotter_text.dart';
import 'package:learning_management/widgtets/backappbar.dart';
import 'package:learning_management/widgtets/text1.dart';
import 'package:learning_management/widgtets/text2.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Backappbar(title: 'About us'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ostad is a Screen Development platform govern your use of the App and any associated services. By accessing or using the App, you agree to be bound by these Terms.\n\n'
                'By using the App, you agree to comply with and be bound by these Terms and any additional terms, conditions, or policies that may be applicable. If you do not agree with any part of these Terms, you must not use the App.\n\n'
                'To the fullest extent permitted by law, [Your Company Name] shall not be liable for any indirect, incidental, special, consequential, or punitive damages arising out of or related to your use of the App.',
              ),
              SizedBox(height: 30),
              Text1(
                text: 'Trade licence number 53212154***',
                fontweight: FontWeight.bold,
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Icon(Icons.phone),
                  Text1(
                    text: '+880 17655***',
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.mail),
                  Text1(
                    text: 'alazadcmt@gmail.com',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
