import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/widgets/appRichText.dart';
import 'package:learning_management/controllers/login_controller.dart';
import 'package:learning_management/style/text_style.dart';
import 'package:learning_management/style/textfiled_style.dart';
import 'package:learning_management/style/toast_style.dart';
import '../../../utils/app_image.dart';
import '../../../utils/input_validation.dart';
import '../../../widgets/app_button.dart';
import '../LoginScreen/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                      Text('Register Now!', style: AppTextStyle1()),
                      Text(
                        'Fill the details below',
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
                                  appInputDecoretion('Your Name', Icons.person),
                              validator: InputValidator.validateUsername,
                            ),
                            SizedBox(height: 20.0),
                            TextFormField(
                              decoration:
                                  appInputDecoretion('Your Email', Icons.email),
                              validator: InputValidator.validateEmail,
                            ),
                            SizedBox(height: 20.0),
                            TextFormField(
                              decoration: appInputDecoretion(
                                  'Your Phone Number', Icons.call),
                              validator: InputValidator.validatenumber,
                            ),
                            SizedBox(height: 20.0),
                            TextFormField(
                              obscureText: true,
                              decoration: appInputDecoretion(
                                  'Your Password', Icons.remove_red_eye),
                              validator: InputValidator.validatePassword,
                            ),
                            SizedBox(height: 20.0),
                            TextFormField(
                              obscureText: true,
                              decoration: appInputDecoretion(
                                  'Re-type Your Password',
                                  Icons.remove_red_eye),
                              validator: InputValidator.validatePassword,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      // Login Button
                      AppButton(
                        text: "Register",
                        onTap: () {
                          SuccessToast('Successfully Successfully Register');
                          Get.to(() => LoginScreen());
                        },
                      ),

                      // Login Account Button
                      Apprichtext(
                          text: 'You have already account? ',
                          text2: 'Log In',
                          ontap: () => Get.offAll(() => LoginScreen()))
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
