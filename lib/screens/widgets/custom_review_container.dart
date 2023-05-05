
import 'package:appcom_task/screens/widgets/review_row.dart';
import 'package:flutter/material.dart';

class CustomReviewCotainer extends StatelessWidget {
  const CustomReviewCotainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final widget= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          // height: 150,
          height: height*0.4,
          width: widget*1,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'asset/bg.jpg',
              ),
              scale: 3,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 50, left: 10),
          child: ReviewRow(
            image:
                'asset/png-clipart-facebook-logo-social-media-facebook-computer-icons-linkedin-logo-facebook-icon-media-internet.png',
            rating: '4.9/5',
            reviews: '145k+',
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 50, left: 200),
          child: ReviewRow(
              image:
                  "asset/png-transparent-google-logo-g-suite-google-guava-google-plus-company-text-logo.png",
              rating: '4.8/5',
              reviews: '135k+'),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 120),
          child: Center(child: Text('Rating as on 31st Decmber-2022',style: TextStyle(color: Colors.black45),),),
        )
      ],
    );
  }
}

