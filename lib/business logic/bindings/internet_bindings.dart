import 'package:get/get.dart';
import 'package:learning_management/business%20logic/controllers/internet_controller.dart';

class InternetBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InternetController>(() => InternetController(), fenix: true);
  }

  static void init() {
    Get.put<InternetController>(InternetController(), permanent: true);
  }
}
