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
        height: height * .29,
        width: width * 0.46,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: Colors.black),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.02, vertical: height * 0.029),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.08,
                  child: Text(
                    text1,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.033,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: height * 0.076,
                  child: Text(
                    text2,
                    style: TextStyle(
                        color: Colors.white, fontSize: height * 0.024),
                  ),
                ),
                SizedBox(
                  height: height * 0.045,
                  width: width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_forward,
                        color: const Color.fromARGB(
                          255,
                          255,
                          174,
                          0,
                        ),
                        size: height * 0.05,
                      ),
                      Icon(
                        icon,
                        color: const Color.fromARGB(
                          255,
                          255,
                          174,
                          0,
                        ),
                        size: height * 0.07,
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
