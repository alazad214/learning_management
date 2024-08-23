import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:learning_management/app/modules/onboading/views/onboading_screen.dart';
import 'package:learning_management/app/modules/splash/views/splash_screen.dart';

import '../app/modules/course section/views/course_screen.dart';
import '../app/modules/home section/notification/views/notification_page.dart';
import '../app/modules/home section/views/home_screen.dart';
import '../app/modules/splash/bindigns/splash_bindings.dart';
import '../app/modules/user auth/login/views/login_screen.dart';


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
    page: () => const CourseScreen(),
  ),
  GetPage(
    name: notification,
    page: () => const NotificationPage(),
  ),
];
