import 'package:flutter/material.dart';
import 'package:learning_management/widgets/text2.dart';

class SmallButton extends StatelessWidget {
  const SmallButton(
      {super.key,
      this.text,
      this.bgcolor,
      this.color,
      this.fontWeight,
      this.onTap});
  final text;
  final bgcolor;
  final color;
  final fontWeight;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: bgcolor ?? Colors.blue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(5.0)),
        child: Text(
          text ?? ' ',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: color ?? Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
