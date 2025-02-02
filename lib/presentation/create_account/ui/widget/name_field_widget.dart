import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/material.dart';

class NameFieldWidget extends StatefulWidget {
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final String? initialValue;
  final String? placeholder;
  const NameFieldWidget({super.key, this.controller, this.onChanged, this.initialValue, this.placeholder});

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
          decoration: InputDecoration(
            hintText: widget.placeholder ?? 'Untitled',
            border: InputBorder.none,
            hintStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          onChanged: widget.onChanged,
          style: AppTextStyle.body18Regular(),
          keyboardType: TextInputType.name,
          textAlign: TextAlign.start,
          controller: controller,
          minLines: 1,
          maxLines: 3,
        ),
    );
  }
}