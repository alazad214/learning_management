import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learning_management/style/text_style.dart';
import 'package:learning_management/style/textfiled_style.dart';
import 'package:learning_management/style/toast_style.dart';
import '../../../../utils/app_image.dart';
import '../../../../utils/input_validation.dart';
import '../../../../widgets/appRichText.dart';
import '../../../../widgets/app_button.dart';
import '../../../business logic/controllers/login_controller.dart';
import '../../nav bar/views/bottom_nav_screen.dart';
import '../forget/forget_screen.dart';
import '../register/register_screen.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {

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
                      SizedBox(height: 20.h),
                      Text('Welcome Back!', style: AppTextStyle1()),
                      Text(
                        'Login to continue',
                        style: AppTextStyle2(),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
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
                            SizedBox(height: 20.h),
                            TextFormField(
                              obscureText: true,
                              decoration: appInputDecoretion(
                                  'Your Password', Icons.remove_red_eye),
                              validator: InputValidator.validatePassword,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),

                      // Forget Password Button
                      InkWell(
                          onTap: () => Get.offAll(() => ForgetScreen()),
                          child:
                              Text('Forget password?', style: AppTextStyle2())),

                      SizedBox(
                        height: 15.h,
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
