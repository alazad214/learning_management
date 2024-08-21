import 'package:flutter/material.dart';
import 'package:learning_management/app/modules/resourse/widgets/resourse_card.dart';
import 'package:learning_management/widgtets/backappbar.dart';
import 'package:learning_management/widgtets/text1.dart';
import 'package:learning_management/widgtets/text2.dart';

class ResourseScreen extends StatelessWidget {
  const ResourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Backappbar(title: "Resourse"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: ListView.builder(
            reverse: true,
            itemCount: 5,
            itemBuilder: (_, index) {
              return Resoursecard(
                moduleNo: "Module-1",
                date: "16, may, 2024",
                ontap: () {},
              );
            }),
      ),
    );
  }
}
