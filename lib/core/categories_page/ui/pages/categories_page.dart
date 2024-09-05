import 'package:finance_app/core/accounts_page/ui/widget/accounts_header.dart';
import 'package:finance_app/core/home/bloc/transaction_bloc.dart';
import 'package:finance_app/core/home/bloc/transaction_event.dart';
import 'package:finance_app/core/home/bloc/transaction_state.dart';
import 'package:finance_app/core/home/service/count_cash_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  late TransactionBloc _transactionBloc;

  @override
  void initState() {
    super.initState();
    _transactionBloc = TransactionBloc(cashService: CountCashService());

    _transactionBloc.add(LoadTransactionItems(month: DateTime.now()));
  }

  void _handleDateChanged(DateTime newDate) {
    // selectedMonth = newDate;
    _transactionBloc.add(LoadTransactionItems(month: newDate));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          const SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 115,
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: BlocBuilder<TransactionBloc, TransactionState>(
              bloc: _transactionBloc,
              builder: (context, state) {
                if (state is TransactionError) {
                  return Center(child: Text('Error: ${state.message}'));
                } else if (state is TransactionLoading) {
                  return const SizedBox();
                } else if (state is TransactionLoaded) {
                  return AccountsHeader(
                    transactionsFuture: state.transaction,
                    onDateChanged: _handleDateChanged,
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
      ],
      )
    );
  }
}