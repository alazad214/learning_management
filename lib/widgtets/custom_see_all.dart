import 'package:flutter/material.dart';
import 'package:learning_management/widgtets/text1.dart';
import 'package:learning_management/widgtets/text2.dart';


class CustomSeeAll extends StatelessWidget {
  const CustomSeeAll({super.key, this.title, this.ontap, this.color});
  final title;
  final ontap;
  final color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text1(text: title ?? "..", color: color,),
        InkWell(
          onTap: ontap,
          child: const Text2(
            text: "View All",
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}
