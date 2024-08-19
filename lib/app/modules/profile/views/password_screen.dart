import 'package:flutter/material.dart';
import 'package:learning_management/widgtets/button1.dart';
import 'package:learning_management/widgtets/textfield1.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Textfield1(hinttext: Text('Current Password')),
            SizedBox(height: 10.0),
            Textfield1(hinttext: Text('Enter New Password')),
            SizedBox(height: 10.0),
            Textfield1(hinttext: Text('Re-enter New Password')),
            SizedBox(height: 25.0),
            Button1(text: 'Update')
          ],
        ),
      ),
    );
  }
}
