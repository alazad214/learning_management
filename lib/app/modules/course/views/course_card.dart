import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key, this.text, this.course, this.image});
  final text;
  final course;
  final image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 80.0,
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            border: Border.all(width: 0.1),
            borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          children: [
            Image.asset(
              image ?? 'assets/images/course/flutter.png',
              height: 70,
              width: 70,
            ),
            const SizedBox(width: 15.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text ?? 'n..',
                  style: TextStyle(fontSize: 16.0),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Course - ',
                      style: TextStyle(fontSize: 14.0, color: Colors.black45),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      course ?? '..',
                      style: TextStyle(fontSize: 14.0),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
