import 'package:flutter/material.dart';
import 'package:learning_management/utils/colors.dart';

import '../../../widgets/custom_appbar.dart';
import '../../../widgets/small_container.dart';


class ClassJoin extends StatelessWidget {
  const ClassJoin({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Code, Coffee, Repeat',
                      style: TextStyle(
                          color: AppColor.primary,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Class Schedule',
                      style: TextStyle(
                          color: AppColor.primary,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              for (int i = 0; i < 5; i++)
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 25.0,
                        left: 15.0,
                        right: 15.0,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(width: 0.1)),
                      child: Column(
                        children: [
                          SmallContainer(
                            text: "Flutter App Development",
                          ),
                          Text(
                            'Topic: Dart language basic with Begginerrs ',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: AppColor.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Wednesday, 21,2024',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: AppColor.orrange,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '9:30 PM',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: AppColor.orrange,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SmallContainer(text: "Module-1"),
                              SmallContainer(text: "Batch-1"),
                            ],
                          ),
                          SizedBox(height: 10),
                          SmallContainer(
                            text: 'Join Class',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            bgcolor: AppColor.black,
                          )
                        ],
                      ),
                    )
                  ],
                )
            ],
          ),
        ));
  }
}
