import 'package:flutter/material.dart';

class DigitToolCotainer extends StatelessWidget {
  const DigitToolCotainer({
    super.key,
    required this.height,
    required this.width,
    required this.text1,
    required this.text2,
    required this.icon,
  });

  final double height;
  final double width;
  final String text1;
  final String text2;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: height * .23,
        width: width * 0.44,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  text2,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_forward,
                      color: Color.fromARGB(
                        255,
                        255,
                        174,
                        0,
                      ),
                      size: 30,
                    ),
                    Icon(
                      icon,
                      color: const Color.fromARGB(
                        255,
                        255,
                        174,
                        0,
                      ),
                      size: 30,
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
