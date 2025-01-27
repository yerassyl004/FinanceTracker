import 'package:flutter/material.dart';

class NameFieldWidget extends StatefulWidget {
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final String? initialValue;
  const NameFieldWidget({super.key, this.controller, this.onChanged, this.initialValue});

  @override
  State<NameFieldWidget> createState() => _NameFieldWidgetState();
}

class _NameFieldWidgetState extends State<NameFieldWidget> {
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
            hintText: 'Untitled',
            border: InputBorder.none,
            hintStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          onChanged: widget.onChanged,
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