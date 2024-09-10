import 'package:get/get_navigation/src/routes/get_route.dart';
import '../app/auth/LoginScreen/login_screen.dart';
import '../app/course/views/join_class_screen.dart';
import '../app/home/views/home_screen.dart';
import '../app/onboading/onboading/onboading_screen.dart';
import '../app/onboading/splash/bindigns/splash_bindings.dart';
import '../app/onboading/splash/views/splash_screen.dart';
import '../app/settings/notification_page.dart';

//INITIAL UNIQUE ROUTE NAME
const String splash = '/splash_screen';
const String home = '/HomeScreen';
const String onboading = '/onboading_screen';
const String login = '/login_screen';
const String course = '/course_screen';
const String notification = '/notification_screen';

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
  GetPage(
    name: login,
    page: () => const LoginScreen(),
  ),
  GetPage(
    name: course,
    page: () => const ClassJoin(),
  ),
  GetPage(
    name: notification,
    page: () => const NotificationPage(),
  ),
];
