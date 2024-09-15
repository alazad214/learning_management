import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learning_management/widgets/appRichText.dart';
import 'package:learning_management/style/text_style.dart';
import 'package:learning_management/style/textfiled_style.dart';
import 'package:learning_management/style/toast_style.dart';
import '../../../../utils/app_image.dart';
import '../../../../utils/input_validation.dart';
import '../../../../widgets/app_button.dart';
import '../../../business logic/controllers/login_controller.dart';
import '../Login/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                  /// Header Section
                  Image.asset(
                    AppImage.appLogo,
                    width: size.width / 3,
                  ),
                  SizedBox(height: 5.h),
                  Text('Register Now!', style: AppTextStyle1()),
                  SizedBox(
                    height: 30.h,
                  ),

                  ///Register FormField...
                  Form(
                    key: controller.globalKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration:
                              appInputDecoretion('First Name', Icons.person),
                          validator: InputValidator.validateUsername,
                        ),
                        SizedBox(height: 15.h),
                        TextFormField(
                          decoration:
                              appInputDecoretion('Last Name', Icons.person),
                          validator: InputValidator.validateUsername,
                        ),
                        SizedBox(height: 15.h),
                        TextFormField(
                          decoration:
                              appInputDecoretion('Your Email', Icons.email),
                          validator: InputValidator.validateEmail,
                        ),
                        SizedBox(height: 15.h),
                        TextFormField(
                          obscureText: true,
                          decoration: appInputDecoretion(
                              'Your Password', Icons.remove_red_eye),
                          validator: InputValidator.validatePassword,
                        ),
                        SizedBox(height: 15.h),
                        TextFormField(
                          obscureText: true,
                          decoration: appInputDecoretion(
                              'Re-type Your Password', Icons.remove_red_eye),
                          validator: InputValidator.validatePassword,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),

                  // Login Button
                  AppButton(
                    text: "Register",
                    onTap: () {
                      SuccessToast('Successfully Successfully Register  ');
                      Get.to(() => LoginScreen());
                    },
                  ),

                  // Login Account Button
                  Apprichtext(
                      text2: 'Log In',
                      ontap: () => Get.offAll(() => LoginScreen()))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
