import 'package:finance_app/app/extensions.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/material.dart';

class TransferInfoWidget extends StatelessWidget {
  final String image;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  const TransferInfoWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.onTap,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: isSelected ? Colors.blueAccent : Colors.grey,
                width: 2.0),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                'assets/images/$image.png',
                height: 32,
                width: 35,
              ),
              4.pw,
              Text(title, style: AppTextStyle.body18Regular())
            ],
          )),
    );
  }
}
