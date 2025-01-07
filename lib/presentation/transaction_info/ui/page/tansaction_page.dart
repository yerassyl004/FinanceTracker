import 'package:finance_app/app/di.dart';
import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/models/type_spending.dart';
import 'package:finance_app/presentation/transaction_info/bloc/transaction_info_bloc.dart';
import 'package:finance_app/presentation/transaction_info/di.dart';
import 'package:finance_app/presentation/transaction_info/repository/transaction_info_repository.dart';
import 'package:finance_app/presentation/transaction_info/ui/widget/account_info_widget.dart';
import 'package:finance_app/presentation/transaction_info/ui/widget/destination_widget.dart';
import 'package:finance_app/presentation/transaction_info/ui/widget/header_detail_widget.dart';
import 'package:finance_app/presentation/transaction_info/ui/widget/transfer_note_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TansactionInfoArgument {
  final Transaction transaction;

  const TansactionInfoArgument({required this.transaction});
}

class TansactionPage extends StatelessWidget {
  final TansactionInfoArgument args;
  const TansactionPage({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => di.getTransactionInfoBloc(
            repository: TransactionInfoRepository(),
            transaction: args.transaction)
          ..add(TransactionInfoEvent.show(
              data: TransactionInfoData(transaction: args.transaction))),
        child: TansactionPageView(args: args));
  }
}

class TansactionPageView extends StatelessWidget {
  final TansactionInfoArgument args;
  TansactionPageView({super.key, required this.args});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _controller.text = args.transaction.note ?? '';
    return BlocBuilder<TransactionInfoBloc, TransactionInfoState>(
        builder: (context, state) {
      return state.maybeWhen(
          show: (data) => Container(
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
                            HeaderDetailWidget(
                                transaction: data.transaction,
                                onDelete: () async {
                                  context.read<TransactionInfoBloc>().add(
                                      TransactionInfoEvent.remove(data: data));
                                }),
                            const SizedBox(height: 16),
                            AccountInfoWidget(
                                account: args.transaction.account!),
                            data.transaction.typeSpending ==
                                    TypeSpending.transfer
                                ? DestinationWidget(
                                    destination: data.transaction.destination)
                                : const SizedBox(),
                            const SizedBox(height: 16),
                            TransferNoteWidget(controller: _controller)
                          ]),
                    ),
                  ))),
          orElse: () {
            return SizedBox();
          });
    });
  }
}
