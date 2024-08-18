import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final image;
  final ontap;
  final title;
  final rate;
  final title2;
  const CustomCard(
      {super.key, this.image, this.ontap, this.title, this.rate, this.title2});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 120.0,
        width: 150.0,
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
            color: Colors.blueAccent.withOpacity(0.2),
            borderRadius: BorderRadius.circular(4.0)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(
            image ?? "assets/images/slider/slider1.jpg",
            fit: BoxFit.cover,
            height: 120.0,
            width: double.infinity,
          ),

        ]),
      ),
    );
  }
}
