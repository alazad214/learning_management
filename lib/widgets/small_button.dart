import 'package:flutter/material.dart';
import 'package:learning_management/widgets/text2.dart';

class SmallButton extends StatelessWidget {
  const SmallButton(
      {super.key, this.text, this.bgcolor, this.color, this.fontWeight});
  final text;
  final bgcolor;
  final color;
  final fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: bgcolor ?? Colors.blue.withOpacity(0.8),
          borderRadius: BorderRadius.circular(5.0)),
      child: Text2(
        text: text,
        color: color??Colors.white,
        fontweight: fontWeight ?? FontWeight.bold,
      ),
    );
  }
}
