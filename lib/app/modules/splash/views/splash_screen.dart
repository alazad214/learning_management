import 'package:flutter/material.dart';
import 'package:learning_management/utils/app_string.dart';
import 'package:learning_management/widgtets/text1.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
                height: screenSize.height / 1,
                alignment: Alignment.center,
                child: const Text1(
                  text: AppString.name,
                )),
          ],
        ),
      ),
    );
  }
}
