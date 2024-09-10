import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_management/app/course/widgets/module_header.dart';
import 'package:learning_management/app/course/widgets/module_video_screen.dart';

import '../../../utils/colors.dart';
import '../../../widgets/backappbar.dart';
import '../../../widgets/small_container.dart';
import '../../../widgets/text1.dart';

class ModuleScreen extends StatelessWidget {
  const ModuleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                ModuleHeader(),
                for (int i = 0; i < 4; i++)
                  Container(
                    clipBehavior: Clip.antiAlias,
                    padding: const EdgeInsets.all(10.0),
                    margin: const EdgeInsets.only(bottom: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(width: 0.5)),
                    child: Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        subtitle: const Text(
                            'learn a DART basic consept in this module'),
                        tilePadding: EdgeInsets.zero,
                        childrenPadding: EdgeInsets.zero,
                        title: Row(
                          children: [
                            SmallContainer(
                              text: 'Module 1',
                            ),
                            Spacer(),
                            Text1(
                              text: "Dart Basic",
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: 10.0,
                            )
                          ],
                        ),
                        trailing: const Icon(Icons.keyboard_arrow_down_rounded),
                        children: [
                          const Divider(),
                          for (int i = 0; i < 5; i++)
                            ListTile(
                                onTap: () {
                                  Get.to(() => ModuleVideoScreen());
                                },
                                contentPadding: EdgeInsets.zero,
                                leading: CircleAvatar(
                                  backgroundColor:
                                      AppColor.primary.withOpacity(.1),
                                  child: Icon(
                                    Icons.video_call,
                                    color: AppColor.primary,
                                  ),
                                ),
                                title: Text('Flutter Basic Structure'),
                                subtitle: Text('Class no - 3'))
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
