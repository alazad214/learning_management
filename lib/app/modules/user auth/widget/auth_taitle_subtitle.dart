import 'package:flutter/material.dart';
import 'package:learning_management/utils/colors.dart';
import 'package:learning_management/widgtets/text1.dart';

class AuthTaitleSubtitle extends StatelessWidget {
  final title;
  final subtitle;
  const AuthTaitleSubtitle({super.key, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text1(
              text: title ?? "WelCome Back!",
              fontweight: FontWeight.bold,
              size: 22.0,
              color: AppColor.primary,
              padding: EdgeInsets.only(bottom: 5),
            ),
            Text(
              subtitle ?? 'Make it work, make it right, make it first.',
              style: TextStyle(
                color: AppColor.black2,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
