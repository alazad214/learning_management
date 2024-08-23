import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:learning_management/utils/colors.dart';

class OnboadingScreen extends StatelessWidget {
  const OnboadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        _buildPageViewModel(
            title: "Learn new skills everyday!",
            body: "This is the first screen of the onboarding.",
            image: const AssetImage('assets/images/onboading2.png') //
            ),
        _buildPageViewModel(
          title: "Choose your plan!",
          body: "Here are some features of the app.",
          image: const AssetImage('assets/images/onboadin2.png'), //
        ),
        _buildPageViewModel(
          title: "Get Started",
          body: "Let's get started with using the app!",
          image: const AssetImage('assets/images/onboading2.png'), //
        ),
      ],
      onDone: () {
        Get.offNamed("/login_screen");
      },
      onSkip: () {
        Get.offNamed("/login_screen");
      },
      showSkipButton: true,
      skip: const Text("Skip"),
      back: const Icon(Icons.arrow_forward),
      next: const Icon(Icons.arrow_forward),
      done: Text("Done",
          style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.black)),
      dotsDecorator: DotsDecorator(
        size: Size.square(10.0),
        activeSize: Size(20.0, 10.0),
        activeColor: AppColor.primary,
        color: AppColor.grey,
        spacing: EdgeInsets.symmetric(horizontal: 3.0),
      ),
    );
  }

  PageViewModel _buildPageViewModel({
    required String title,
    required String body,
    required ImageProvider image, // Updated to ImageProvider
  }) {
    return PageViewModel(
      title: title,
      body: body,
      image: Center(
          child: Image(
        image: image,
        width: double.infinity,
        height: 500,
        fit: BoxFit.cover,
      )),
      decoration: PageDecoration(
        imageFlex: 2,
        fullScreen: true,
        imagePadding: EdgeInsets.all(24.0),
        titleTextStyle: TextStyle(
            fontSize: 28.0, fontWeight: FontWeight.bold, color: AppColor.black),
        bodyTextStyle: TextStyle(fontSize: 16.0, color: AppColor.black2),
      ),
    );
  }
}
