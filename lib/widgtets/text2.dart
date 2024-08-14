import 'package:flutter/material.dart';

class Text2 extends StatelessWidget {
  final String? text;
  final color;
  final size;
  final fontweight;
  final padding;
  final alignment;
  const Text2(
      {super.key,
      this.text,
      this.color,
      this.size,
      this.fontweight,
      this.padding,
      this.alignment});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0.0),
      child: Align(
        alignment: alignment??Alignment.center,
        child: Text(
          text!,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: color ?? Colors.black,
              fontSize: size ?? 14.0,
              fontWeight: fontweight ?? FontWeight.w400),
        ),
      ),
    );
  }
}
