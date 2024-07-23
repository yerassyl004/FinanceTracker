import 'package:finance_app/core/add_transaction/ui/pages/add_transaction_page.dart';
import 'package:finance_app/core/analysis/service/analys_service.dart';
import 'package:finance_app/core/analysis/ui/widgets/transaction_analys_list.dart';
import 'package:finance_app/core/home/ui/widgets/header_widget.dart';
import 'package:finance_app/core/models/transaction.dart';
import 'package:finance_app/core/models/type_spending.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AnalysisPage extends StatefulWidget {
  const AnalysisPage({super.key});

  @override
  State<AnalysisPage> createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage> with SingleTickerProviderStateMixin {

  late Future<List<Transaction>> _transactionsFuture;
  AnalysService analysService = AnalysService();
  var selectedMonth = DateTime.now();
  final ScrollController _scrollController = ScrollController();
  late AnimationController _fabAnimationController;
  late Animation<Offset> _fabAnimation;

  @override
  void initState() {
    super.initState();
    _transactionsFuture = analysService.loadTransactions(selectedMonth, TypeSpending.expense);

    _fabAnimationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _fabAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0.0, 2.0),
    ).animate(_fabAnimationController);

    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
      _fabAnimationController.forward();
    } else if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
      _fabAnimationController.reverse();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _fabAnimationController.dispose();
    super.dispose();
  }

  void _handleDateChanged(DateTime newDate) {
    selectedMonth = newDate;
    setState(() {
      _transactionsFuture = analysService.loadTransactions(newDate, TypeSpending.expense);
    });
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
              HeaderWidget(transactionsFuture: _transactionsFuture, onDateChanged: _handleDateChanged),
              const SizedBox(height: 16),
              Expanded(
                child: FutureBuilder<List<Transaction>>(
                  future: _transactionsFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (snapshot.hasData) {
                      return TransactionAnalysList(
                        transactions: snapshot.data!,
                        scrollController: _scrollController,
                      );
                    } else {
                      return const Center(child: Text('No transactions found.'));
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
                    MaterialPageRoute(builder: (context) => AddTransactionPage()),
                  );
                  if (result == true) {
                    setState(() {
                      _transactionsFuture = analysService.loadTransactions(selectedMonth, TypeSpending.expense);
                    });
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