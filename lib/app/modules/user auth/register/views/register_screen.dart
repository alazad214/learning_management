import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/utils/colors.dart';
import 'package:learning_management/widgtets/button1.dart';
import 'package:learning_management/widgtets/text1.dart';
import 'package:learning_management/widgtets/text2.dart';
import 'package:learning_management/widgtets/textfield1.dart';
import '../../login/views/login_screen.dart';
import '../../widget/auth_fotter_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenSize.height / 10),
            const Text1(
              text: "Register",
              fontweight: FontWeight.bold,
              size: 20.0,
              padding: EdgeInsets.only(bottom: 10),
            ),
            const Text2(
              text: "Hello user you have a gratefull journey!",
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Textfield1(
              hinttext: Text("Name"),
              suffixicon: Icons.person,
            ),
            const SizedBox(height: 10.0),
            const Textfield1(
              hinttext: Text("Email"),
              suffixicon: Icons.email_outlined,
            ),
            const SizedBox(height: 10.0),
            const Textfield1(
              hinttext: Text("Mobile"),
              suffixicon: Icons.phone,
            ),
            const SizedBox(height: 10.0),
            const Textfield1(
              hinttext: Text("Password"),
              suffixicon: Icons.remove_red_eye,
              obscuretext: true,
            ),
            const SizedBox(height: 10.0),
            const Textfield1(
              hinttext: Text("Confirm Password"),
              suffixicon: Icons.remove_red_eye,
              obscuretext: true,
            ),
            const SizedBox(height: 30.0),
            Button1(
              text: 'REGISTER',
              ontap: () {},
            ),
            AuthFotterText(
              text: "Already have an account?  ",
              pagename: 'Log in',
              ontap: () => Get.to(() => const LoginScreen()),
            )
          ],
        ),
      )),
    );
  }
}
