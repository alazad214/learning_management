import 'package:flutter/material.dart';

class CustomProfilePic extends StatelessWidget {
  const CustomProfilePic({super.key, this.image});
  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      clipBehavior: Clip.antiAlias,
      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.blueAccent),
          shape: BoxShape.circle,
          image:  DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover)),
    );
  }
}
