import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  final String? text;
  final color;
  final size;
  final fontweight;
  const Text1({super.key, this.text, this.color, this.size, this.fontweight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          color: color ?? Colors.black,
          fontSize: size ?? 18.0,
          fontWeight: fontweight ?? FontWeight.w500),
    );
  }
}
