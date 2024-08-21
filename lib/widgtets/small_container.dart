import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_management/widgtets/text2.dart';

class SmallContainer extends StatelessWidget {
  const SmallContainer({super.key, this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(5.0)),
      child: Text2(
        text: text,
      ),
    );
  }
}
