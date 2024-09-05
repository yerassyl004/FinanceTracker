import 'package:finance_app/core/accounts_page/ui/widget/accounts_header.dart';
import 'package:finance_app/core/categories/service/category_service.dart';
import 'package:finance_app/core/categories_page/ui/widgets/categories_list.dart';
import 'package:finance_app/core/create_category/ui/page/create_category_page.dart';
import 'package:finance_app/core/home/bloc/transaction_bloc.dart';
import 'package:finance_app/core/home/bloc/transaction_event.dart';
import 'package:finance_app/core/home/bloc/transaction_state.dart';
import 'package:finance_app/core/home/service/count_cash_service.dart';
import 'package:finance_app/core/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  late List<Category> categories;
  late TransactionBloc _transactionBloc;
  final CategoryService _categoryService = CategoryService();

  @override
  void initState() {
    super.initState();
    categories = _categoryService.getDefaultIncomeCategories();
    _transactionBloc = TransactionBloc(cashService: CountCashService());

    _transactionBloc.add(LoadTransactionItems(month: DateTime.now()));
  }

  void _handleDateChanged(DateTime newDate) {
    // selectedMonth = newDate;
    _transactionBloc.add(LoadTransactionItems(month: newDate));
  }

  Future<void> _pushCreateCategory(Category? category) async {
    final result = await showBarModalBottomSheet(
      expand: true,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => CreateCategoryPage(category: category),
    );

    if (result == true) {
      // _accountsBloc.add(const LoadAccounts()); // Reload accounts
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Stack(
          children: [
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 115,
                  ),
                  Expanded(
                      child: CategoriesList(
                          categories: categories,
                          pushEditCategory: _pushCreateCategory,
                          updateList: () {}))
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
            Positioned(
            left: 16,
            right: 16,
            bottom: 8,
            height: 48,
            child: FloatingActionButton(
              onPressed: () {
                _pushCreateCategory(null);
              },
              backgroundColor: Colors.blueAccent,
              child: const Text(
                'Add new account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ],
        ));
  }
}
