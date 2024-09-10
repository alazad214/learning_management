import 'package:flutter/material.dart';
import 'package:learning_management/widgets/text1.dart';
import 'package:learning_management/widgets/text2.dart';

class CustomSeeAll extends StatelessWidget {
  const CustomSeeAll(
      {super.key, this.title, this.ontap, this.color, this.viewall});
  final title;
  final ontap;
  final color;
  final viewall;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text1(
          text: title ?? "..",
          color: color,
        ),
        InkWell(
          onTap: ontap,
          child: Text2(
            text: viewall ?? "View All",
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}
