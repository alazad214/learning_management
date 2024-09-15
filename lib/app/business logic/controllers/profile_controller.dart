import 'package:get/get.dart';
import '../../modules/profile/views/edit_profile_screen.dart';

class ProfileController extends GetxController {
  var userName = "Tripty Chowdhury".obs;
  var userEmail = "triptychowdury@example.com".obs;
  var userPhone = "01763551316".obs;
  var userBio = "Learning enthusiast and developer.".obs;
  var profileCompletion = 0.85.obs;

  void editProfile() {
    Get.to(() => EditProfileScreen());
  }
}
