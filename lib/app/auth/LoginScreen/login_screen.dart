import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/app/auth/forget/forget_screen.dart';
import 'package:learning_management/app/auth/register/register_screen.dart';
import 'package:learning_management/controllers/login_controller.dart';
import 'package:learning_management/style/text_style.dart';
import 'package:learning_management/style/textfiled_style.dart';
import 'package:learning_management/style/toast_style.dart';

import '../../../utils/app_image.dart';
import '../../../utils/input_validation.dart';
import '../../../widgets/app_button.dart';
import '../../nav bar/views/bottom_nav_screen.dart';
import '../../../widgets/appRichText.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Center(
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Header Section
                  Column(
                    children: [
                      Image.asset(AppImage.appLogo),
                      SizedBox(height: 20.0),
                      Text('Welcome Back!', style: AppTextStyle1()),
                      Text(
                        'Login to continue',
                        style: AppTextStyle2(),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  Column(
                    children: [
                      // Login Form
                      Form(
                        key: controller.globalKey,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration:
                                  appInputDecoretion('Your Email', Icons.email),
                              validator: InputValidator.validateEmail,
                            ),
                            SizedBox(height: 20.0),
                            TextFormField(
                              obscureText: true,
                              decoration: appInputDecoretion(
                                  'Your Password', Icons.remove_red_eye),
                              validator: InputValidator.validatePassword,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      // Forget Password Button
                      InkWell(
                          onTap: () => Get.offAll(() => ForgetScreen()),
                          child:
                              Text('Forget password?', style: AppTextStyle2())),

                      const SizedBox(
                        height: 15,
                      ),

                      // Login Button
                      AppButton(
                        text: "Log In",
                        onTap: () {
                          SuccessToast('Successfully Log In');
                          Get.to(() => BottomNavScreen());
                        },
                      ),

                      // Create Account Button
                      Apprichtext(
                          text: "Don't have an account? ",
                          text2: 'Register',
                          ontap: () => Get.offAll(() => RegisterScreen()))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
