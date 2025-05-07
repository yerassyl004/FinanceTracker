import 'package:auto_route/auto_route.dart';
import 'package:finance_app/app/date_format.dart';
import 'package:finance_app/app/di.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/presentation/transaction_category_list/bloc/transaction_category_bloc.dart';
import 'package:finance_app/presentation/transaction_category_list/di.dart';
import 'package:finance_app/presentation/transaction_category_list/ui/widget/transaction_category_header.dart';
import 'package:finance_app/presentation/transaction_category_list/ui/widget/transaction_category_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionsCategoryArguments {
  final DateTime dateTime;
  final Category category;
  final double totalCash;

  const TransactionsCategoryArguments(
      this.category, this.dateTime, this.totalCash);
}

@RoutePage()
class TransactionsCategoryPage extends StatelessWidget {
  final TransactionsCategoryArguments args;
  const TransactionsCategoryPage({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => di.getTransactionCategoryBloc(args),
        child: TransactionsCategoryPageView(args: args));
  }
}

class TransactionsCategoryPageView extends StatelessWidget {
  final TransactionsCategoryArguments args;
  const TransactionsCategoryPageView({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: BlocBuilder<TransactionCategoryBloc, TransactionCategoryState>(
            builder: (context, state) => state.maybeWhen(
                  orElse: () => SizedBox(),
                  loaded: (transactions) => Column(
                    children: [
                      TransactionCategoryHeader(
                          category: args.category,
                          totalCash: args.totalCash,
                          date: getDate(transactions)),
                      Expanded(
                        child: TransactionCategoryList(
                          transactions: transactions,
                          updateList: () {
                            context.read<TransactionCategoryBloc>().add(
                                TransactionCategoryEvent.loadTransactions(
                                    category: args.category,
                                    selectedMonth: args.dateTime));
                          },
                        ),
                      ),
                    ],
                  ),
                )));
  }
}
