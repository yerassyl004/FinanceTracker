import 'package:flutter/material.dart';

class NameFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  const NameFieldWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade100,
      ),
        child: TextField(
          decoration: const InputDecoration(
            hintText: 'Name',
            border: InputBorder.none,
            hintStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          keyboardType: TextInputType.name,
          textAlign: TextAlign.start,
          controller: controller,
          minLines: 1,
          maxLines: 3,
        ),
    );
  }
}