import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BalanceFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  const BalanceFieldWidget({super.key, required this.controller});

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
          hintText: '₸0',
          border: InputBorder.none,
          hintStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
        keyboardType: TextInputType.number,
        controller: controller,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'^\₸?[\d,]*\.?\d{0,2}')),
        ],
        minLines: 1,
        maxLines: 3,
      ),
    );
  }
}
