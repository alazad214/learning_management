import 'package:flutter/material.dart';
import '../../../../../widgtets/text1.dart';
import '../../../../../widgtets/text2.dart';

class LiveClassCard extends StatelessWidget {
  const LiveClassCard({super.key, this.icon, this.text, this.text2});
  final icon;
  final text;
  final text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      padding: const EdgeInsets.only(right: 10, left: 10),
      margin: const EdgeInsets.only(bottom: 15,right: 10.0),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(width: 0.1)),
      child: Column(

        children: [
          Image.asset(
            icon ?? 'assets/icon/skill.png',
            height: 40,
          ),
          const SizedBox(width: 10.0),
          Column(
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
        ],
      ),
    );
  }
}
