import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class InternetController extends GetxController {
  final Connectivity _connectivity = Connectivity();
  var isOffline = false.obs;

  @override
  void onInit() {
    super.onInit();
    _checkInitialConnection();
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void _checkInitialConnection() async {
    ConnectivityResult result = await _connectivity.checkConnectivity();
    _updateConnectionStatus(result);
  }

  void _updateConnectionStatus(ConnectivityResult connectivityResult) {
    if (connectivityResult == ConnectivityResult.none) {
      isOffline.value = true;
      _showNoInternetDialog();
    } else {
      isOffline.value = false;
      if (Get.isDialogOpen!) {
        Get.back(); // Internet is back, close the dialog
      }
    }
  }

  void _showNoInternetDialog() {
    if (!Get.isDialogOpen!) {
      // Always show dialog irrespective of which screen is active
      Future.delayed(Duration.zero, () {
        Get.dialog(
          AlertDialog(
            title: const Text("No Internet Connection"),
            content: const Text("Please check your internet connection."),
            actions: [
              ElevatedButton(
                onPressed: () {
                  _retryInternetCheck();
                },
                child: const Text("Retry"),
              ),
            ],
          ),
          barrierDismissible: false,
        );
      });
    }
  }

  void _retryInternetCheck() async {
    ConnectivityResult result = await _connectivity.checkConnectivity();
    if (result == ConnectivityResult.none) {
      _showNoInternetDialog();
    } else {
      if (Get.isDialogOpen!) {
        Get.back();
      }
    }
  }
}
