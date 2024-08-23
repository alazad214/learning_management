import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/utils/colors.dart';
import 'package:learning_management/widgtets/button1.dart';
import 'package:learning_management/widgtets/iconBox1.dart';
import 'package:learning_management/widgtets/text1.dart';
import 'package:learning_management/widgtets/text2.dart';
import 'package:learning_management/widgtets/textfield1.dart';
import '../../../../section/navigation bar/views/bottom_nav_screen.dart';
import '../../forget/forget_screen.dart';
import '../../register/views/register_screen.dart';
import '../../widget/auth_fotter_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenSize.height / 8),
            //LOGIN PAGE TITLE AND SUBTITLE
            const Text1(
              text: "Login",
              fontweight: FontWeight.bold,
              size: 20.0,
              padding: EdgeInsets.only(bottom: 10),
            ),
            const Text2(
              text: "Glad to meet you again!",
            ),
            const SizedBox(
              height: 20.0,
            ),

            //TEXTFIELD
            const Textfield1(
              hinttext: Text("Email"),
              suffixicon: Icons.email_outlined,
            ),
            const SizedBox(height: 15.0),
            const Textfield1(
              hinttext: Text("Password"),
              suffixicon: Icons.remove_red_eye,
            ),
            const SizedBox(height: 15.0),

            //FORGET BUTTON
            Text2(
              text: "Forget password?",
              color: AppColor.primary,
              padding: const EdgeInsets.only(right: 20),
              alignment: Alignment.centerRight,
              ontap: () {
                Get.to(() => const ForgetScreen());
              },
            ),
            const SizedBox(height: 30.0),

            //SUBMIT BUTTON
            Button1(
              text: 'LOG IN',
              ontap: () {
                Get.to(() => BottomNavScreen());
              },
            ),
            const SizedBox(height: 30.0),

            //SOCIAL MEDIA AUTHENTICATION
            const Row(
              children: [
                Flexible(child: Divider()),
                Text2(
                  text: "  OR Login with  ",
                ),
                Flexible(child: Divider()),
              ],
            ),
            const SizedBox(height: 15.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Iconbox1(
                  image: "assets/images/fb.png",
                ),
                Iconbox1(
                  image: "assets/images/google.png",
                ),
              ],
            ),

            //DON'T HAVE AN ACCOUNT
            AuthFotterText(
              text: "Don't have an accout?  ",
              pagename: 'Register',
              ontap: () => Get.to(() => const RegisterScreen()),
            )
          ],
        ),
      )),
    );
  }
}
