import 'package:finance_app/core/add_transation/ui/pages/add_transaction_page.dart';
import 'package:finance_app/core/home/ui/widgets/header_widget.dart';
import 'package:finance_app/core/home/ui/widgets/transactions_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              const HeaderWidget(),
              Expanded(
                child: TransactionsList(),
              ),
            ],
          ),
          Positioned(
              right: 16,
              bottom: 16,
              child: FloatingActionButton(
                  backgroundColor: Colors.grey.shade300,
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      useSafeArea: true,
                      enableDrag: true,
                      useRootNavigator: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20.0),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(20.0),
                          ),
                          child: AddTransactionPage(),
                        );
                      },
                    );
                  },
                  child: const Icon(CupertinoIcons.add)
                )
              )
        ],
      ),
    );
  }
}
