import 'package:flutter/material.dart';
import 'package:learning_management/utils/colors.dart';
import 'package:learning_management/views/home/widgets/home_appbar.dart';
import '../../../widgets/small_button.dart';

class ClassJoin extends StatelessWidget {
  const ClassJoin({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width,
            padding: EdgeInsets.only(top: 35),
            height: size.height / 6,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColor.primary,
            ),
            child: HomeAppBar(),
          ),
          for (int i = 0; i < 5; i++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(width: 0.1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Flutter App Development',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: AppColor.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Topic: Dart language basic with Begginerrs ',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColor.black,
                            fontSize: 13.0,
                          ),
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
                            SmallButton(text: "Module-1"),
                            SmallButton(
                              text: "Batch-1",
                              color: Colors.black,
                              bgcolor: Colors.blueAccent.withOpacity(0.2),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        SmallButton(
                          text: 'Join Class',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          bgcolor: AppColor.red,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
        ],
      ),
    ));
  }
}
