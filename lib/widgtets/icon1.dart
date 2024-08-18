import 'package:flutter/material.dart';

class Icon1 extends StatelessWidget {
  final ontap;
  final color;
  final size;
  final icon;
  final padding;
  const Icon1(
      {super.key, this.ontap, this.color, this.size, this.icon, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0.0),
      child: IconButton(
          onPressed: ontap,
          icon: Icon(
            icon ?? Icons.notifications,
            color: color ?? Colors.blueAccent,
            size: size ?? 30.0,
          )),
    );
  }
}
