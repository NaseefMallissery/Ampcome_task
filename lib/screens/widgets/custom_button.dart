import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.name
  });
final String name;
  @override
  Widget build(BuildContext context) {
        final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        height: height*0.057,
        width: width*0.5,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:  [
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.w500,color: Colors.black87,fontSize: 18),
          ),const Icon(Icons.arrow_forward_ios,color: Colors.black87)
        ]),
      ),
    );
  }
}
