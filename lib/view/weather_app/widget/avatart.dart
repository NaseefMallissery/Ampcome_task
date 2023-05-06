import 'package:flutter/material.dart';



class PodcastTile extends StatelessWidget {
  const PodcastTile({
    required this.text,
    required this.text2,
    required this.icon,
    super.key,
  });
  final String text;
  final String text2;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  Icon(
       icon,
        size: 40,
              color: Colors.lightBlue[300],
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        text2,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
