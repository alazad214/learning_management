import 'package:flutter/material.dart';
import 'package:learning_management/utils/colors.dart';

import '../../../widgets/small_container.dart';
import '../../../widgets/text1.dart';


class BottonSheet extends StatelessWidget {
  const BottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      padding: EdgeInsets.only(top: 10, left: 20.0, right: 20.0),
      decoration: BoxDecoration(
          color: AppColor.secondary,
          border: Border(top: BorderSide(width: 0.1)),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "৳ 6000",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.bold,
                    decorationColor: Colors.red),
              ),
              Text1(
                text: '৳ 5500',
                color: AppColor.primary,
                fontweight: FontWeight.bold,
              ),
            ],
          ),
          SmallContainer(
            text: 'Join 2nd Batch',
            color: AppColor.white,
            bgcolor: AppColor.red,
          )
        ],
      ),
    );
  }
}
