import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:learning_management/app/modules/home/views/home_screen.dart';
import 'package:learning_management/app/modules/onboading/views/onboading_screen.dart';
import 'package:learning_management/app/modules/splash/views/splash_screen.dart';
import '../modules/splash/bindigns/splash_bindings.dart';

//INITIAL UNIQUE ROUTE NAME
const String splash = '/splash_screen';
const String home = '/HomeScreen';
const String onboading = '/onboading_screen';

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => const SplashScreen(),
    binding: SplashBinding(),
  ),
  GetPage(
    name: home,
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: onboading,
    page: () => const OnboadingScreen(),
  ),
];
