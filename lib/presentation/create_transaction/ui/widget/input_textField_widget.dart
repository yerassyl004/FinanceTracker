import 'package:flutter/material.dart';

class InputTextfieldWidget extends StatelessWidget {
  final String hintText;
  final int maxLine;
  final int minLine;
  final TextInputType inputType;
  final TextEditingController controller;
  const InputTextfieldWidget(
      {super.key,
      required this.hintText,
      required this.inputType,
      required this.maxLine,
      required this.minLine,
      required this.controller
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 6, right: 16, bottom: 6),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(16)),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: const TextStyle(fontSize: 18)),
        style: const TextStyle(
          fontSize: 18,
        ),
        controller: controller,
        keyboardType: inputType,
        minLines: minLine,
        maxLines: maxLine,
      ),
    );
  }
}