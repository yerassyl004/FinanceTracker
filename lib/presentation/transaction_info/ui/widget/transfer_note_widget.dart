import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/material.dart';

class TransferNoteWidget extends StatelessWidget {
  final TextEditingController controller;
  const TransferNoteWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade100,
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: AppStrings.noNoted,
            border: InputBorder.none,
            hintStyle: AppTextStyle.body18Regular()),
        style: AppTextStyle.body18Regular(),
        controller: controller,
        minLines: 1,
        maxLines: 3,
        enabled: false,
      ),
    );
  }
}
