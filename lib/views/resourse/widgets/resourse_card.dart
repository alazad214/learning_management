


import 'package:flutter/material.dart';

import '../../../widgets/small_container.dart';
import '../../../widgets/text1.dart';

class Resoursecard extends StatelessWidget {
  const Resoursecard({super.key, this.moduleNo, this.date, this.ontap});
  final moduleNo;
  final date;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text1(
            text: moduleNo,
          ),
          const SizedBox(height: 10.0),
          const Divider(),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text1(text: "Module 1 Resourse", size: 18.0),
                    const SizedBox(height: 10),
                    SmallContainer(
                      text: date,
                    )
                  ],
                ),
                InkWell(
                    onTap: ontap,
                    child: const CircleAvatar(child: Icon(Icons.download)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
