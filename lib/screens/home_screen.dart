import 'package:appcom_task/screens/widgets/ccotainer.dart';
import 'package:appcom_task/screens/widgets/custom_review_container.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'widgets/custom_button.dart';
import 'widgets/digit_tool.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () => Drawer(
                  child: Column(),
                ),
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: SizedBox(
            height: height*0.078,
            width: width*0.145,
            child: Image.asset(
              "asset/logo.jpeg",
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(width*0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: [
                  Container(
                    height: height*0.2,

                    width: double.maxFinite,
                    // margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: AssetImage('asset/Untitled.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    // child: Image.asset('asset/Untitled.png'),
                  ),
                ],
                options: CarouselOptions(
                  height: height*0.2,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 4 / 2,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
               SizedBox(
                height: height*0.04,
                 child: Text(
                  "Protect what you Love Today!",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height*0.03,
                      fontWeight: FontWeight.bold),
                             ),
               ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CatoCatainer(
                        icon: Icons.favorite_border,
                        text: "Health",
                      ),
                      CatoCatainer(icon: Icons.car_repair, text: 'Car'),
                      CatoCatainer(
                          icon: Icons.motorcycle_rounded, text: 'Bike'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CatoCatainer(
                        icon: Icons.fire_truck_outlined,
                        text: "Commercial",
                      ),
                      CatoCatainer(
                          icon: Icons.local_airport_outlined, text: 'Travel'),
                      CatoCatainer(icon: Icons.home_outlined, text: 'Home'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomButton(
                name: "View all Products",
              ),
              const SizedBox(
                height: 30,
              ),
                SizedBox(
                height: height*0.04,
                 child: Text(
                "We're Loved by our Customers",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height*0.03,
                      fontWeight: FontWeight.bold),
                             ),
               ),
            
              const SizedBox(
                height: 20,
              ),
              const CustomReviewCotainer(),
              const SizedBox(
                height: 25,
              ),
               SizedBox(
                height: height*0.04,
                 child: Text(
                "Our Wellness Benifits",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height*0.03,
                      fontWeight: FontWeight.bold),
                             ),
               ),
           
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: height * .4,
                  width: width * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: AssetImage(
                        'asset/benefit.png',
                      ),
                      scale: 3,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: height * .25,
                  width: width * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: AssetImage(
                        'asset/benifit1.png',
                      ),
                      scale: 3,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: height * .23,
                      width: width * 0.44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                          image: AssetImage(
                            'asset/benifit2.png',
                          ),
                          scale: 3,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: height * .1,
                          width: width * 0.47,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                              image: AssetImage(
                                'asset/benifit3.png',
                              ),
                              scale: 3,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: height * .1,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'asset/benifit4.png',
                                  ),
                                  scale: 3,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.075,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: height * .1,
                              width: width * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'asset/benifit5.png',
                                  ),
                                  scale: 3,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              const CustomButton(name: "View all Benifits"),
              SizedBox(
                height: height * 0.05,
              ),
                 SizedBox(
                height: height*0.04,
                 child: Text(
                "Quick Services",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height*0.03,
                      fontWeight: FontWeight.bold),
                             ),
               ),
         
              SizedBox(
                height: height * 0.03,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: height * .14,
                          width: width * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                              image: AssetImage(
                                'asset/services1.png',
                              ),
                              scale: 3,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: height * .14,
                          width: width * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                              image: AssetImage(
                                'asset/services2.png',
                              ),
                              scale: 3,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: height * .14,
                          width: width * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                              image: AssetImage(
                                'asset/services3.png',
                              ),
                              scale: 3,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: height * .14,
                          width: width * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                              image: AssetImage(
                                'asset/services4.png',
                              ),
                              scale: 3,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
                    SizedBox(
                height: height*0.04,
                 child: Text(
                        "Do more with Digit Tools",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize:height*0.03,
                      fontWeight: FontWeight.bold),
                             ),
               ),
         
          
              SizedBox(
                height: height * 0.03,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: height * .5,
                  width: width * 1,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: width*0.025,vertical: height*0.023),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height*0.16,
                          child:  Text(
                            "Check Credit\nScore",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height*0.057,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: height*0.07,
                          child:  Text(
                            "Unlock exclusive discount on\n Digit Health Insurence",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height*0.027,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(height: height*0.16,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: SizedBox(
                                  height: height*0.15,
                                  width: width*0.58,
                                  child: Row(
                                    children:  [
                                       Text(
                                        "Chech Now",
                                        style: TextStyle(
                                            color: const Color.fromARGB(255, 255, 174, 0),
                                            fontSize:height*0.04,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(Icons.arrow_forward_rounded,
                                          color: const Color.fromARGB(
                                            255,
                                            255,
                                            174,
                                            0,
                                          ),size: height*.065,)
                                    ],
                                  ),
                                ),
                              ),
                               SizedBox(
                                width: width*0.26,
                                 child: Icon(
                                  Icons.credit_card,
                                  color: Colors.white,
                                  size: height*0.13,
                                                             ),
                               )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DigitToolCotainer(
                        height: height,
                        width: width,
                        text1: "Today's Fuel\n Price",
                        text2: "Petrol, Diesel,LPG,\nand CNG",
                        icon: Icons.water_drop_outlined,
                      ),
                      DigitToolCotainer(
                          height: height,
                          width: width,
                          text1: "Vehicle Owner\nInfo",
                          text2: "Get vehicle\nRegistration details",
                          icon: Icons.credit_card),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DigitToolCotainer(
                          height: height,
                          width: width,
                          text1: "Traffic Fines in\nyour City",
                          text2: "Offences & Penalties",
                          icon: Icons.traffic_outlined),
                      DigitToolCotainer(
                          height: height,
                          width: width,
                          text1: "Check Taxes\n on Fuels",
                          text2: "Excise Duty,\nVAT etc.",
                          icon: Icons.shopping_basket_outlined)
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              const CustomButton(name: "View 20+ Tools"),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: height*0.1,
                    width: width*0.3,
                    child: Image.asset("asset/logo.jpeg",fit: BoxFit.fill,)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("LET'S DO THE",style: TextStyle(fontSize: 26),),
                      Text(
                        "DIGIT",
                        style: TextStyle(fontWeight: FontWeight.w800,fontSize: 26),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
