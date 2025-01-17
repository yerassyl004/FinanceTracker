import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BalanceFieldWidget extends StatefulWidget {
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final String? initialValue;
  const BalanceFieldWidget({super.key, this.controller, this.onChanged, this.initialValue});

  @override
  State<BalanceFieldWidget> createState() => _BalanceFieldWidgetState();
}

class _BalanceFieldWidgetState extends State<BalanceFieldWidget> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = widget.controller != null ? widget.controller! : TextEditingController();
    controller.text = widget.initialValue ?? '';
  }

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
        onChanged: widget.onChanged,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
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
