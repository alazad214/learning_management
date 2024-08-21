import 'package:flutter/material.dart';
import 'package:learning_management/widgtets/backappbar.dart';
import 'package:learning_management/widgtets/button2.dart';
import 'package:learning_management/widgtets/text2.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Backappbar(
        title: 'Certificate',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text2(
                  text: 'Completion Certificate',
                  size: 18.0,
                  alignment: Alignment.centerLeft),
              SizedBox(height: 10.0),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Congratulations! ',
                    style: TextStyle(color: Colors.green, fontSize: 16)),
                TextSpan(
                    text:
                        'you have successfully completed your course. Download and share your certificate. '),
              ])),
              SizedBox(height: 10.0),
              Row(
                children: [
                  Button2(
                    text: 'Share',
                  ),
                  Button2(
                    text: 'Download',
                    icon: Icons.download,
                    color: Colors.green,
                  ),
                ],
              ),
              SizedBox(height: 50.0),
              Text2(
                  text: 'Assessment Certificate',
                  size: 18.0,
                  alignment: Alignment.centerLeft),
              SizedBox(height: 10.0),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Congratulations! ',
                    style: TextStyle(color: Colors.green, fontSize: 16)),
                TextSpan(
                    text:
                        'you have successfully completed your course. Download and share your certificate. '),
              ])),
              SizedBox(height: 10.0),
              Row(
                children: [
                  Button2(
                    text: 'Share',
                  ),
                  Button2(
                    text: 'Download',
                    icon: Icons.download,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
