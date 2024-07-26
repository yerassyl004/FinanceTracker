import 'package:finance_app/core/add_transaction/ui/pages/add_transaction_page.dart';
import 'package:finance_app/core/home/bloc/transaction_bloc.dart';
import 'package:finance_app/core/home/bloc/transaction_event.dart';
import 'package:finance_app/core/home/bloc/transaction_state.dart';
import 'package:finance_app/core/home/ui/widgets/header_widget.dart';
import 'package:finance_app/core/home/service/count_cash_service.dart';
import 'package:finance_app/core/home/ui/widgets/transactions_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TransactionBloc _transactionBloc;
  late DateTime _currentDate;
  CountCashService cashService = CountCashService();
  var selectedMonth = DateTime.now();
  final ScrollController _scrollController = ScrollController();
  late AnimationController _fabAnimationController;
  late Animation<Offset> _fabAnimation;

  @override
  void initState() {
    super.initState();
    _transactionBloc = TransactionBloc(cashService: CountCashService());
    _currentDate = DateTime.now();
    _fabAnimationController = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    );

    _fabAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0.0, 2.0),
    ).animate(_fabAnimationController);

    _transactionBloc.add(LoadTransactionItems(month: _currentDate));
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      _fabAnimationController.forward();
    } else if (_scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      _fabAnimationController.reverse();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _fabAnimationController.dispose();
    _transactionBloc.close();
    super.dispose();
  }

  void _handleDateChanged(DateTime newDate) {
    selectedMonth = newDate;
    _transactionBloc.add(LoadTransactionItems(month: newDate));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey.shade100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: double.infinity,
                height: 180,
                child: BlocBuilder<TransactionBloc, TransactionState>(
                  bloc: _transactionBloc,
                  builder: (context, state) {
                    if (state is TransactionError) {
                      return Center(child: Text('Error: ${state.message}'));
                    } else if (state is TransactionLoading) {
                      return const SizedBox();
                    } else if (state is TransactionLoaded) {
                      return HeaderWidget(
                        transactionsFuture: state.transaction,
                        onDateChanged: _handleDateChanged,
                      );
                    } else {
                      return const Center(
                          child: Text('No transactions found.'));
                    }
                  },
                ),
              ),
              Expanded(
                child: BlocBuilder<TransactionBloc, TransactionState>(
                  bloc: _transactionBloc,
                  builder: (context, state) {
                    if (state is TransactionError) {
                      return Center(child: Text('Error: ${state.message}'));
                    } else if (state is TransactionLoading) {
                      return const SizedBox();
                    } else if (state is TransactionLoaded) {
                      if (state.transaction.isEmpty) {
                        return const Padding(
                          padding: EdgeInsets.all(24.0),
                          child: Center(
                              child: Text(
                            'No records in this month. Tap + to add new expense or income',
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          )),
                        );
                      } else {
                        return TransactionsList(
                          transactions: state.transaction,
                          scrollController: _scrollController,
                        );
                      }
                    } else {
                      return const Center(
                          child: Text('No transactions found.'));
                    }
                  },
                ),
              ),
            ],
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: SlideTransition(
              position: _fabAnimation,
              child: FloatingActionButton(
                backgroundColor: Colors.grey.shade300,
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddTransactionPage()),
                  );
                  if (result == true) {
                    _transactionBloc
                        .add(LoadTransactionItems(month: selectedMonth));
                  }
                },
                child: const Icon(CupertinoIcons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
