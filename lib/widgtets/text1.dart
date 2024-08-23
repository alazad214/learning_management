import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  final String? text;
  final color;
  final size;
  final fontweight;
  final padding;
  final ontap;
  final maxline;
  const Text1(
      {super.key,
      this.text,
      this.color,
      this.size,
      this.fontweight,
      this.padding,
      this.ontap, this.maxline});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: padding ?? const EdgeInsets.all(0.0),
        child: Text(
          text!,
          overflow: TextOverflow.ellipsis,
          maxLines: maxline??1,
          style: TextStyle(
              color: color ?? Colors.black,
              fontSize: size ?? 18.0,
              fontWeight: fontweight ?? FontWeight.w500),
        ),
      ),
    );
  }
}
