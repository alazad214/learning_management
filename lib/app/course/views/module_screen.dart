import 'package:flutter/material.dart';
import 'package:learning_management/widgtets/backappbar.dart';
import 'package:learning_management/widgtets/small_container.dart';
import 'package:learning_management/widgtets/text1.dart';

class ModuleScreen extends StatelessWidget {
  const ModuleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Backappbar(
        title: 'Modules',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
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
                          const ListTile(
                            title: Text('Day 1'),
                            subtitle:
                                Text('Introduction to DART for beginners'),
                          ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
