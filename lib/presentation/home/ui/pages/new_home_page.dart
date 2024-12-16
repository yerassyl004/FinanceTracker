import 'package:finance_app/app/di.dart';
import 'package:finance_app/presentation/create_transaction/ui/pages/new_create_transactions_page.dart';
import 'package:finance_app/presentation/home/bloc/transaction_bloc.dart';
import 'package:finance_app/presentation/home/di.dart';
import 'package:finance_app/presentation/home/repositories/count_cash_service.dart';
import 'package:finance_app/presentation/home/ui/widgets/header_widget.dart';
import 'package:finance_app/presentation/home/ui/widgets/transactions_list.dart';
import 'package:finance_app/presentation/resourses/routes_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewHomePage extends StatelessWidget {
  const NewHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.getHomeBloc(repository: HomeRepository()),
      child: Scaffold(
        body: BlocConsumer<TransactionBloc, TransactionState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Stack(
                children: [
                  Container(
                    color: Colors.grey.shade100,
                  ),
                  SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 115),
                        Expanded(
                          child: state.maybeWhen(
                            loading: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            error: (message) => Center(
                              child: Text('Error: $message'),
                            ),
                            loaded: (data) {
                              if (data.transactions.isEmpty) {
                                return const Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: Center(
                                    child: Text(
                                      'No records in this month. Tap + to add new expense or income',
                                      maxLines: 2,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                );
                              } else {
                                return TransactionsList(
                                  transactions: data.transactions,
                                  scrollController: ScrollController(),
                                  updateList: () {
                                    context.read<TransactionBloc>().add(
                                          LoadTransactionItems(
                                            month: data.currentMonth,
                                          ),
                                        );
                                  },
                                );
                              }
                            },
                            orElse: () => const Center(
                              child: Text('No transactions found.'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      child: state.maybeWhen(
                        loading: () => const SizedBox(),
                        error: (message) => Center(
                          child: Text('Error: $message'),
                        ),
                        loaded: (data) => HeaderWidget(
                          transactionsFuture: data.transactions,
                          onDateChanged: (newDate) {
                            context
                                .read<TransactionBloc>()
                                .add(LoadTransactionItems(month: newDate));
                          },
                        ),
                        orElse: () => const SizedBox(),
                      )),
                  Positioned(
                    right: 16,
                    bottom: 16,
                    child: FloatingActionButton(
                      backgroundColor: Colors.grey.shade300,
                      onPressed: () async {
                        final result = await Navigator.pushNamed(
                            context, Routes.createTransactionPage,
                            arguments: CreateTransactionsArgument(
                              null),
                            );
                        if (result == true) {
                          state.maybeWhen(
                            loaded: (data) {
                              context.read<TransactionBloc>().add(
                                  LoadTransactionItems(
                                      month: data.currentMonth));
                            },
                            orElse: () {},
                          );
                        }
                      },
                      child: const Icon(CupertinoIcons.add),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
