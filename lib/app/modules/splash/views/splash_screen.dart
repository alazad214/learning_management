import 'package:flutter/material.dart';
import 'package:learning_management/utils/app_config.dart';
import 'package:learning_management/utils/colors.dart';

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppConfig.name,
                      style: TextStyle(color: AppColor.primary, fontSize: 18.0),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 100.0),
                        child: LinearProgressIndicator(
                          color: AppColor.primary,
                          borderRadius: BorderRadius.circular(10),
                        ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
