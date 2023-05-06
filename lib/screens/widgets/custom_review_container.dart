
import 'package:appcom_task/screens/widgets/review_row.dart';
import 'package:flutter/material.dart';

class CustomReviewCotainer extends StatelessWidget {
  const CustomReviewCotainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          // height: 150,
          height: height*0.4,
          width: width*1,
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
         Padding(
          padding: EdgeInsets.only(top: height*0.1, left: width*0.1),
          child: const ReviewRow(
            image:
                'asset/png-clipart-facebook-logo-social-media-facebook-computer-icons-linkedin-logo-facebook-icon-media-internet.png',
            rating: '4.9/5',
            reviews: '145k+',
          ),
        ),
         Padding(
          padding: EdgeInsets.only(top: height*0.1, left: width*0.5),
          child: const ReviewRow(
              image:
                  "asset/png-transparent-google-logo-g-suite-google-guava-google-plus-company-text-logo.png",
              rating: '4.8/5',
              reviews: '135k+'),
        ),
         Padding(
          padding: EdgeInsets.only(top: height*0.3),
          child: const Center(child: Text('Rating as on 31st Decmber-2022',style: TextStyle(color: Colors.black45),),),
        )
      ],
    );
  }
}

