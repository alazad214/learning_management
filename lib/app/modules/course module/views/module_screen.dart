import 'package:flutter/material.dart';
import 'package:learning_management/widgtets/backappbar.dart';

class ModuleScreen extends StatelessWidget {
  const ModuleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Backappbar(
        title: 'Modules',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
