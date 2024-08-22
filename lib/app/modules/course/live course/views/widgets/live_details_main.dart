import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../../../../widgtets/small_container.dart';
import '../../../../../../widgtets/text1.dart';

class LiveDetailsMain extends StatelessWidget {
  const LiveDetailsMain({super.key, this.image, this.title, this.module, this.rate});
  final image;
  final title;
  final module;
  final rate;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return   Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          image,
          height: 90.0,
          width: screenSize.width / 2.5,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Column(
            children: [
              Text1(
                text: title,
              ),
              const SizedBox(height: 10.0),
              const SmallContainer(
                text: "Module-16",
              ),
              const SizedBox(height: 10.0),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemSize: 20.0,
                itemCount: 5,
                itemPadding:
                const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 25,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
