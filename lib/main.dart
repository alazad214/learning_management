import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:learning_management/utils/app_string.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app/modules/menu/controller/theme_controller.dart';
import 'app/routes/app_route.dart';

void main() async {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          title: AppString.name,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode:
              themeController.isDark.value ? ThemeMode.dark : ThemeMode.light,
          initialRoute: splash,
          getPages: getPages,
        ));
  }
}
