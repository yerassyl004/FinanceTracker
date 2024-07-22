import 'package:finance_app/core/models/transaction.dart';
import 'package:finance_app/core/models/type_spending.dart';
import 'package:finance_app/core/transaction_info/ui/widget/account_info_widget.dart';
import 'package:finance_app/core/transaction_info/ui/widget/destination_widget.dart';
import 'package:finance_app/core/transaction_info/ui/widget/header_detail_widget.dart';
import 'package:finance_app/core/transaction_info/ui/widget/transfer_note_widget.dart';
import 'package:flutter/material.dart';

class TansactionPage extends StatelessWidget {
  final Transaction transaction;
  TansactionPage({super.key, required this.transaction});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _controller.text = transaction.note ?? '';
    return Container(
      color: Colors.white,
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
                      HeaderDetailWidget(transaction: transaction),
                      const SizedBox(height: 16),
                      AccountInfoWidget(account: transaction.account),
                      transaction.typeSpending == TypeSpending.transfer ?
                     DestinationWidget(destination: transaction.destination) :
                      const SizedBox(),
                      const SizedBox(height: 16),
                      TransferNoteWidget(controller: _controller)
                    ]),
              ),
            )));
  }
}