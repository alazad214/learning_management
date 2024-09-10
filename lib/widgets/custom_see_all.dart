import 'package:flutter/material.dart';
import 'package:learning_management/widgets/text1.dart';
import 'package:learning_management/widgets/text2.dart';

class CustomSeeAll extends StatelessWidget {
  const CustomSeeAll(
      {super.key,
      this.title,
      this.ontap,
      this.color,
      this.viewall,
      this.size,
      this.fontweight});
  final title;
  final ontap;
  final color;
  final viewall;
  final size;
  final fontweight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title ?? '',
            style: TextStyle(
                color: color ?? Colors.black,
                fontSize: size ?? 16.0,
                fontWeight: fontweight ?? FontWeight.bold)),
        InkWell(
          onTap: ontap,
          child: Text(viewall ?? 'View All',
              style: TextStyle(
                  color: color ?? Colors.blueAccent,
                  fontSize: size ?? 14.0,
                  fontWeight: fontweight ?? FontWeight.bold)),
        )
      ],
    );
  }
}
