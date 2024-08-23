import 'package:flutter/material.dart';
import 'package:learning_management/utils/colors.dart';
import 'package:learning_management/widgtets/backappbar.dart';
import 'package:learning_management/widgtets/button1.dart';
import 'package:learning_management/widgtets/text1.dart';
import 'package:learning_management/widgtets/text2.dart';
import 'package:learning_management/widgtets/textfield1.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: const Backappbar(title: 'Forget Password'),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenSize.height/8),
            const Text1(
              text: "Password Recovery",
              fontweight: FontWeight.bold,
              size: 20.0,
              padding: EdgeInsets.only(bottom: 10),
            ),
            const Text2(
              text:
                  "Please enter the email address to recieve a varification code.",
              maxline: 2,
              textaign: TextAlign.center,
              padding: EdgeInsets.symmetric(horizontal: 15),
            ),
            const SizedBox(
              height: 20.0,
            ),
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
