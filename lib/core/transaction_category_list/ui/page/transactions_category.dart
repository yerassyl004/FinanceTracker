import 'package:finance_app/core/models/category.dart';
import 'package:finance_app/core/transaction_category_list/bloc/transaction_category_bloc.dart';
import 'package:finance_app/core/transaction_category_list/bloc/transaction_category_event.dart';
import 'package:finance_app/core/transaction_category_list/bloc/transaction_category_state.dart';
import 'package:finance_app/core/transaction_category_list/service/transaction_category_service.dart';
import 'package:finance_app/core/transaction_category_list/ui/widget/transaction_category_header.dart';
import 'package:finance_app/core/transaction_category_list/ui/widget/transaction_category_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionsCategory extends StatefulWidget {
  final Category category;

  const TransactionsCategory({super.key, required this.category});

  @override
  _TransactionsCategoryState createState() => _TransactionsCategoryState();
}

class _TransactionsCategoryState extends State<TransactionsCategory> {
  late TransactionCategoryBloc categoryBloc;
  TransactionCategoryService service = TransactionCategoryService();

  @override
  void initState() {
    super.initState();
    categoryBloc = TransactionCategoryBloc(service: service);
    categoryBloc.add(LoadTransactionsCategory(category: widget.category));
  }

  @override
  void dispose() {
    categoryBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          BlocBuilder<TransactionCategoryBloc, TransactionCategoryState>(
            bloc: categoryBloc,
            builder: (context, state) {
              if (state is TransactionCategoryLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is TransactionCategoryError) {
                return Center(child: Text('Error: ${state.message}'));
              } else if (state is TransactionCategoryLoaded) {
                return TransactionCategoryHeader(
                    category: widget.category,
                    totalCash: service.getTotalCash(state.transaction));
              } else {
                return const SizedBox();
              }
            },
          ),
          const SizedBox(height: 16),
          Expanded(
            child:
                BlocBuilder<TransactionCategoryBloc, TransactionCategoryState>(
              bloc: categoryBloc,
              builder: (context, state) {
                if (state is TransactionCategoryLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is TransactionCategoryError) {
                  return Center(child: Text('Error: ${state.message}'));
                } else if (state is TransactionCategoryLoaded) {
                  return TransactionCategoryList(
                      transactions: state.transaction);
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
