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
        decoration: const InputDecoration(
            hintText: 'No notes',
            border: InputBorder.none,
            hintStyle: const TextStyle(fontSize: 18)),
        style: const TextStyle(
          fontSize: 18,
        ),
        controller: controller,
        minLines: 1,
        maxLines: 3,
      ),
    );
  }
}