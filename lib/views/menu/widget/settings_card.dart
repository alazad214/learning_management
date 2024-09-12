import 'package:flutter/material.dart';

import '../../../widgets/text1.dart';
import '../../../widgets/text2.dart';



class SettingsCard extends StatelessWidget {
  final icon;
  final text;
  final text2;
  final ontap;
  final bgcolor;
  final size1;
  final border;
  const SettingsCard(
      {super.key,
      this.icon,
      this.text,
      this.text2,
      this.ontap,
      this.bgcolor,
      this.size1,
      this.border});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 80,
        padding: const EdgeInsets.only(right: 10, left: 10),
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: bgcolor ?? Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(6.0),
            border: border ?? Border.all(width: 0.1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              icon ?? 'assets/icon/skill.png',
              height: 45.0,
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
                    size: size1 ?? 18.0,
                  ),
                  Text2(
                    text: text2 ?? ' ',
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
