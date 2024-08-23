import 'package:flutter/material.dart';

import '../../../../widgtets/text1.dart';
import '../../../../widgtets/text2.dart';

class SettingsCard extends StatelessWidget {
  final icon;
  final text;
  final text2;
  final ontap;
  const SettingsCard({super.key, this.icon, this.text, this.text2, this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 80,
        padding: const EdgeInsets.only(right: 10, left: 10),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(6.0),
            border: Border.all(width: 0.1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              icon ?? 'assets/icon/skill.png',
              height: 40,
            ),
            const SizedBox(width: 10.0),
            Flexible(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text1(
                    text: text ?? 'Profile',
                  ),
                  Text2(
                    text: text2 ?? 'View your information',
                    alignment: Alignment.centerLeft,
                  )
                ],
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black45,
            )
          ],
        ),
      ),
    );
  }
}
