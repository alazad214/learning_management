import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:learning_management/routes/app_route.dart';
import 'package:learning_management/utils/app_config.dart';
import 'business logic/bindings/internet_bindings.dart';

void main() async {
  /// Ensure Flutter bindings
  WidgetsFlutterBinding.ensureInitialized();

  /// System Overlay Style...
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));



  /// Run the app
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppConfig.name,
      debugShowCheckedModeBanner: false,
      initialRoute: splash,
      getPages: getPages,
    );
  }
}
