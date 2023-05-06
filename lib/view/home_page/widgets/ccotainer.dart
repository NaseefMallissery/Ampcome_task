import 'package:flutter/material.dart';

class CatoCatainer extends StatelessWidget {
  const CatoCatainer({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: height*0.18,
      width: width*0.28,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.black12),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: width*0.084,
            ),
            SizedBox(
              width: width*01,
              child: Center(
                child: Text(
                  text,
                  style:  TextStyle(fontWeight: FontWeight.w500,fontSize: width*0.05),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
