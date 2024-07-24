import 'package:finance_app/core/add_transaction/ui/pages/add_transaction_page.dart';
import 'package:finance_app/core/analysis/service/analys_service.dart';
import 'package:finance_app/core/analysis/ui/widgets/analys_header_widget.dart';
import 'package:finance_app/core/analysis/ui/widgets/multi_segment_circular_percent_indicator.dart';
import 'package:finance_app/core/analysis/ui/widgets/transaction_analys_list.dart';
import 'package:finance_app/core/models/segment.dart';
import 'package:finance_app/core/models/transaction.dart';
import 'package:finance_app/core/models/type_spending.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';


class AnalysisPage extends StatefulWidget {
  const AnalysisPage({super.key});

  @override
  State<AnalysisPage> createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage>
    with SingleTickerProviderStateMixin {
  late Future<List<Transaction>> _transactionsFuture;
  AnalysService analysService = AnalysService();
  var selectedMonth = DateTime.now();
  final ScrollController _scrollController = ScrollController();
  late AnimationController _fabAnimationController;
  late Animation<Offset> _fabAnimation;
  var selectedType = TypeSpending.expense;
  late List<Segment> segments = [];

  @override
  void initState() {
    super.initState();
    _transactionsFuture =
        analysService.loadTransactions(selectedMonth, selectedType);

    _fabAnimationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _fabAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0.0, 2.0),
    ).animate(_fabAnimationController);

    _scrollController.addListener(_scrollListener);
    getSegmentPercentage();
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
    super.dispose();
  }

  void _handleDateChanged(DateTime newDate) {
    selectedMonth = newDate;
    setState(() {
      _transactionsFuture =
          analysService.loadTransactions(newDate, selectedType);
    });
  }

  void _setTypeSpending(TypeSpending typeSpending) {
    setState(() {
      // selectedType = typeSpending;
      _transactionsFuture =
          analysService.loadTransactions(selectedMonth, typeSpending);
    });
    print(selectedType);
  }

  Future<List<ui.Image>> _loadImages(List<String> paths) async {
    List<ui.Image> images = [];
    for (String path in paths) {
      final ByteData data = await rootBundle.load(path);
      final List<int> bytes = data.buffer.asUint8List();
      final Completer<ui.Image> completer = Completer();
      ui.decodeImageFromList(Uint8List.fromList(bytes), (ui.Image img) {
        completer.complete(img);
      });
      images.add(await completer.future);
    }
    return images;
  }

  void getSegmentPercentage() async {
    segments = await analysService.getSegmentPercentage(_transactionsFuture);
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
              AnalysHeaderWidget(
                  transactionsFuture: _transactionsFuture,
                  onDateChanged: _handleDateChanged,
                  typeSpending: _setTypeSpending),
              const SizedBox(height: 16),
              Center(
                child: MultiSegmentCircularPercentIndicator(
                    segments: segments,
                  ),
              ),
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
                    setState(() {
                      _transactionsFuture = analysService.loadTransactions(
                          selectedMonth, selectedType);
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
