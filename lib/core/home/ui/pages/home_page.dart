import 'package:finance_app/core/home/ui/widgets/categories_widgets.dart';
import 'package:finance_app/core/home/ui/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey.shade100,
          ),
          Column(
            children: const [
              HeaderWidget(),
              ],
            ),
        ],
      ),
    );
  }
}
