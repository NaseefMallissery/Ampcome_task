import 'package:flutter/material.dart';

class ReviewRow extends StatelessWidget {
  const ReviewRow({
    required this.image,
    required this.rating,
    required this.reviews,
    super.key,
  });
  final String image;
  final String rating;
  final String reviews;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              scale: 3,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              rating,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "$reviews reviews",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.green,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        )
      ],
    );
  }
}
