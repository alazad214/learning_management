import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/widgets/app_button.dart';
import '../../../business logic/controllers/profile_edit_controller.dart';
import '../widgets/build_textfield.dart';

class EditProfileScreen extends StatelessWidget {
  final controller = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/logo/tripti.jpg'),
                ),
                SizedBox(height: 20),
                // Name Field
                buildTextField(
                  label: 'Name',
                  initialValue: controller.userName.value,
                  onChanged: (value) => controller.updateName(value),
                ),
                SizedBox(height: 20),
                // Email Field
                buildTextField(
                  label: 'Email',
                  initialValue: controller.userEmail.value,
                  onChanged: (value) => controller.updateEmail(value),
                ),
                SizedBox(height: 20),
                // Phone Field
                buildTextField(
                  label: 'Phone',
                  initialValue: controller.userPhone.value,
                  onChanged: (value) => controller.updatePhone(value),
                ),
                SizedBox(height: 20),
                // Bio Field
                buildTextField(
                  label: 'Bio',
                  initialValue: controller.userBio.value,
                  maxLines: 3,
                  onChanged: (value) => controller.updateBio(value),
                ),
                SizedBox(height: 30),
                AppButton(
                  text: 'Save Changes',
                  onTap: () {
                    Get.back();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
