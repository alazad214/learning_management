import 'package:flutter/material.dart';
import 'package:learning_management/app/modules/user%20auth/widget/auth_taitle_subtitle.dart';
import 'package:learning_management/utils/colors.dart';
import 'package:learning_management/widgtets/backappbar.dart';
import 'package:learning_management/widgtets/button1.dart';
import 'package:learning_management/widgtets/textfield1.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: const Backappbar(title: 'Forget Password'),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenSize.height / 8),
            AuthTaitleSubtitle(
                title: "Password Recovery",
                subtitle:
                    'Please enter the email address to recieve a varification code.'),
            const Textfield1(
              hinttext: Text("Email"),
              suffixicon: Icons.email_outlined,
            ),
            const SizedBox(height: 30.0),
            Button1(
              text: 'SUBMIT',
              ontap: () {},
            ),
          ],
        ),
      )),
    );
  }
}
