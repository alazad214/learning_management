import 'package:flutter/material.dart';
import 'package:learning_management/utils/app_colors.dart';
import 'package:learning_management/widgtets/button1.dart';
import 'package:learning_management/widgtets/custom_appbar.dart';
import 'package:learning_management/widgtets/iconBox1.dart';
import 'package:learning_management/widgtets/text1.dart';
import 'package:learning_management/widgtets/text2.dart';
import 'package:learning_management/widgtets/textfield1.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteC,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(),
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
            const Text2(
              text: "Forget password?",
              color: Colors.blueAccent,
              padding: EdgeInsets.only(right: 20),
              alignment: Alignment.centerRight,
            ),
            const SizedBox(height: 30.0),
            Button1(
              text: 'LOG IN',
              ontap: () {},
            ),
            const SizedBox(height: 30.0),
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Iconbox1(
                  color: Colors.grey,
                  image: "assets/images/fb.png",
                ),
                Iconbox1(
                  color: Colors.grey,
                  image: "assets/images/google.png",
                ),
              ],
            ),
            const SizedBox(height: 60.0),
            const Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text2(
                  text: "Don't have an accoutn?  ",
                ),
                Text2(
                  text: "Register",
                  fontweight: FontWeight.bold,
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
