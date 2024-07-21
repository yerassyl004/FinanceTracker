import 'package:finance_app/core/models/transaction.dart';
import 'package:flutter/material.dart';

class TansactionPage extends StatelessWidget {
  final Transaction transaction;
  const TansactionPage({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.8,
            ),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    transaction.cash.toString(),
                    textAlign: TextAlign.center,
                  ),
                ]),
              ),
            )));
  }
}
