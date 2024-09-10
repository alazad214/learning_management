import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/app/auth/LoginScreen/login_screen.dart';
import '../../../style/text_style.dart';
import '../../../style/textfiled_style.dart';
import '../../../style/toast_style.dart';
import '../../../utils/app_image.dart';
import '../../../utils/input_validation.dart';
import '../../../widgets/app_button.dart';
import '../register/register_screen.dart';
import '../../../widgets/appRichText.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Header Section
                    Column(
                      children: [
                        Image.asset(AppImage.appLogo),
                        SizedBox(height: 20.0),
                        Text('Password Recovery!', style: AppTextStyle1()),
                        Text(
                          textAlign: TextAlign.center,
                          'Please enter the email address to recieve a varification code.',
                          style: AppTextStyle2(),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    Column(
                      children: [
                        // Login Form
                        Form(
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: appInputDecoretion(
                                    'Your Email', Icons.email),
                                validator: InputValidator.validateEmail,
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 15,
                        ),

                        // Login Button
                        AppButton(
                          text: "Send Code",
                          onTap: () {
                            SuccessToast('Successfully Log In');
                            Get.to(() => LoginScreen());
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
