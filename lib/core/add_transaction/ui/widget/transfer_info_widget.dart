import 'package:flutter/material.dart';

class TransferInfoWidget extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;
  const TransferInfoWidget({
    super.key,
    required this.image,
    required this.title,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blueAccent,
            width: 2.0
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              'assets/images/$image.png',
              height: 32,
            ),
            const SizedBox(width: 4),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400
              ),
            )
          ],
        )
      ),
    );
  }
}