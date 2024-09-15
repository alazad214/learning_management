import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final globalKey = GlobalKey<FormState>();
  RxString emailError = RxString('');
  final RxBool isLoading = false.obs;
}
