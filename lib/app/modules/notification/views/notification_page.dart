import 'package:flutter/material.dart';
import 'package:learning_management/widgtets/backappbar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Backappbar(
        title: 'Notifications',
      ),
    );
  }
}
