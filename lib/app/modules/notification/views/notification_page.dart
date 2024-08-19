import 'package:flutter/material.dart';
import 'package:learning_management/widgtets/backappbar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Backappbar(
          title: 'Notifications',
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListView.builder(itemBuilder: (_, index) {
            return Column(
              children: [
            ListTile(
            leading: Image.asset('assets/images/course/flutter.png',height: 40,),
            title: const Text("Yout class on module-21 support has start"),
              subtitle: const Text('17-may-2024'),
            ),
                const Divider(color: Colors.black38,)
              ],
            );
          }),
        ));
  }
}
