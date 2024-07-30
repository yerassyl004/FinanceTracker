import 'package:flutter/material.dart';

class PopUpMenuText extends StatelessWidget {
  final String title;
  const PopUpMenuText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black
        ),
    );
  }
}
