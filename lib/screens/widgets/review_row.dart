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
         SizedBox(
          width: MediaQuery.of(context).size.width*0.01,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              rating,
              style:  TextStyle(
                fontSize: MediaQuery.of(context).size.width*0.05,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "$reviews reviews",
              style:  TextStyle(
                fontSize:MediaQuery.of(context).size.width*0.03,
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
