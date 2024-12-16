import 'package:finance_app/app/di.dart';
import 'package:finance_app/presentation/accounts_modal/ui/pages/accounts_modal.dart';
import 'package:finance_app/presentation/categories/ui/pages/categories_page.dart';
import 'package:finance_app/presentation/create_transaction/bloc/create_transaction_bloc.dart';
import 'package:finance_app/presentation/create_transaction/di.dart';
import 'package:finance_app/presentation/create_transaction/repositories/create_transaction_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:finance_app/presentation/create_transaction/ui/widget/input_textField_widget.dart';
import 'package:finance_app/presentation/create_transaction/ui/widget/transfer_info_widget.dart';
import 'package:finance_app/presentation/create_transaction/ui/widget/types_spending_widget.dart';
import 'package:finance_app/data/models/modalType.dart';
import 'package:finance_app/data/models/transaction.dart';
import 'package:finance_app/data/models/type_spending.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CreateTransactionsArgument {
  final Transaction? transaction;
  const CreateTransactionsArgument(this.transaction);
}

class NewCreateTransactionsPage extends StatelessWidget {
  final CreateTransactionsArgument? args;
  const NewCreateTransactionsPage({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.getCreateTransactionBloc(
          repository: CreateTransactionRepository(),
          transaction: args?.transaction),
      child: BlocConsumer<CreateTransactionBloc, CreateTransactionState>(
        listener: (context, state) {
          // if (state is CreateTransactionState && state.error != null) {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(content: Text(state.error!)),
          //   );
          // }
        },
        builder: (context, state) {
          final selectedType = state.data?.selectedType ?? TypeSpending.expense;
          final selectedAccount = state.data?.transaction?.account;
          final receiverAccount = state.data?.transaction?.destination;
          final selectedCategory = state.data?.transaction?.category;
          final amountController = TextEditingController(
            text: state.data?.transaction?.cash.toString() ?? '',
          );
          final notesController = TextEditingController(
            text: state.data?.transaction?.note ?? '',
          );

          return state.maybeWhen(
              orElse: () => SizedBox(),
              editing: (data, error) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text(
                      'New Transaction',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    backgroundColor: Colors.grey.shade100,
                  ),
                  backgroundColor: Colors.grey.shade100,
                  body: SafeArea(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return SingleChildScrollView(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: constraints.maxHeight,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 16),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TypesSpendingWidget(
                                          title: 'Transfer',
                                          isSelected: data.selectedType ==
                                              TypeSpending.transfer,
                                          onTap: () => context
                                              .read<CreateTransactionBloc>()
                                              .add(CreateTransactionEvent.edit(
                                                data: data.copyWith(
                                                    selectedType:
                                                        TypeSpending.transfer),
                                              ))),
                                      Container(
                                        width: 1,
                                        height: 20,
                                        color: Colors.grey,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 16.0),
                                      ),
                                      TypesSpendingWidget(
                                        title: 'Expense',
                                        isSelected: data.selectedType ==
                                            TypeSpending.expense,
                                        onTap: () => context
                                              .read<CreateTransactionBloc>()
                                              .add(CreateTransactionEvent.edit(
                                                data: data.copyWith(
                                                    selectedType:
                                                        TypeSpending.expense),
                                              ))),
                                      Container(
                                        width: 1,
                                        height: 20,
                                        color: Colors.grey,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 16.0),
                                      ),
                                      TypesSpendingWidget(
                                        title: 'Income',
                                        isSelected: data.selectedType ==
                                            TypeSpending.income,
                                        onTap: () => context
                                              .read<CreateTransactionBloc>()
                                              .add(CreateTransactionEvent.edit(
                                                data: data.copyWith(
                                                    selectedType:
                                                        TypeSpending.income),
                                              ))),
                                    ],
                                  ),
                                  const SizedBox(height: 32),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: TransferInfoWidget(
                                          image:
                                              data.transaction?.account?.icon ??
                                                  'wallet_icon',
                                          title: selectedAccount?.title ??
                                              'Account',
                                          onTap: () => showBarModalBottomSheet(
                                            expand: false,
                                            context: context,
                                            backgroundColor: Colors.transparent,
                                            builder: (context) =>
                                                AddAccountsPage(
                                                    onTapAccount: (account) {
                                              final newData = data.copyWith(
                                                  transaction: Transaction(
                                                      cash: data.transaction
                                                              ?.cash ??
                                                          0,
                                                      date:
                                                          data.transaction?.date ??
                                                              DateTime.now(),
                                                      note: data
                                                          .transaction?.note,
                                                      account: account,
                                                      category: data.transaction
                                                          ?.category,
                                                      destination: data
                                                          .transaction
                                                          ?.destination,
                                                      typeSpending:
                                                          data.selectedType));
                                              Navigator.pop(context);
                                              context
                                                  .read<CreateTransactionBloc>()
                                                  .add(CreateTransactionEvent
                                                      .edit(data: newData));
                                            }, accountList: data.account!),
                                          ),
                                          isSelected:
                                              data.transaction?.account != null,
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      selectedType == TypeSpending.transfer
                                          ? Expanded(
                                              child: TransferInfoWidget(
                                              image: data.transaction
                                                      ?.destination?.icon ??
                                                  'wallet_icon',
                                              title: receiverAccount?.title ??
                                                  'Account',
                                              onTap: () =>
                                                  showBarModalBottomSheet(
                                                expand: false,
                                                context: context,
                                                backgroundColor:
                                                    Colors.transparent,
                                                builder: (context) =>
                                                    AddAccountsPage(
                                                        onTapAccount:
                                                            (account) {
                                                  final newData = data.copyWith(
                                                      transaction: Transaction(
                                                          cash: data.transaction
                                                                  ?.cash ??
                                                              0,
                                                          date: data.transaction
                                                                  ?.date ??
                                                              DateTime.now(),
                                                          note: data.transaction
                                                              ?.note,
                                                          account: data
                                                              .transaction!
                                                              .account,
                                                          category: data
                                                              .transaction
                                                              ?.category,
                                                          destination: account,
                                                          typeSpending: data
                                                              .selectedType));
                                                  Navigator.pop(context);

                                                  context
                                                      .read<
                                                          CreateTransactionBloc>()
                                                      .add(
                                                          CreateTransactionEvent
                                                              .edit(
                                                                  data:
                                                                      newData));
                                                }, accountList: data.account!),
                                              ),
                                              isSelected: data.transaction
                                                      ?.destination !=
                                                  null,
                                            ))
                                          : Expanded(
                                              child: TransferInfoWidget(
                                              image: data.transaction
                                                      ?.destination?.icon ??
                                                  'category_icon',
                                              title: receiverAccount?.title ??
                                                  'Category',
                                              onTap: () =>
                                                  showBarModalBottomSheet(
                                                expand: false,
                                                context: context,
                                                backgroundColor:
                                                    Colors.transparent,
                                                builder: (context) =>
                                                    CategoriesPage(
                                                  onCategorySelected:
                                                      (category) {
                                                    final newData = data.copyWith(
                                                        transaction: Transaction(
                                                            cash: data.transaction?.cash ??
                                                                0,
                                                            date: data
                                                                    .transaction
                                                                    ?.date ??
                                                                DateTime.now(),
                                                            note: data
                                                                .transaction
                                                                ?.note,
                                                            account: data
                                                                .transaction!
                                                                .account,
                                                            category: data
                                                                .transaction
                                                                ?.category,
                                                            destination: data
                                                                .transaction
                                                                ?.destination,
                                                            typeSpending: data
                                                                .selectedType));
                                                    Navigator.pop(context);
                                                    context
                                                        .read<
                                                            CreateTransactionBloc>()
                                                        .add(CreateTransactionEvent
                                                            .edit(
                                                                data: newData));
                                                  },
                                                  isExpense:
                                                      data.selectedType ==
                                                          TypeSpending.expense,
                                                ),
                                              ),
                                              isSelected:
                                                  data.transaction?.category !=
                                                      null,
                                            )),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  InputTextfieldWidget(
                                    hintText: '0',
                                    inputType: TextInputType.number,
                                    maxLine: 1,
                                    minLine: 1,
                                    controller: amountController,
                                  ),
                                  const SizedBox(height: 12),
                                  InputTextfieldWidget(
                                    hintText: 'Add notes',
                                    inputType: TextInputType.text,
                                    maxLine: 3,
                                    minLine: 2,
                                    controller: notesController,
                                  ),
                                  const SizedBox(height: 12),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        DateFormat('MMM d, EEEE')
                                            .format(DateTime.now()),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Container(
                                        width: 1,
                                        height: 20,
                                        color: Colors.grey,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                      ),
                                      Text(
                                        DateFormat('h:mm a')
                                            .format(DateTime.now()),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 62),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  floatingActionButton: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, bottom: 0),
                      child: FloatingActionButton.extended(
                        onPressed: () => context
                            .read<CreateTransactionBloc>()
                            .add(CreateTransactionEvent.saveTransaction(
                              data: data.copyWith(
                                transaction: Transaction(
                                    cash: data.transaction?.cash ?? 0,
                                    date: DateTime.now(),
                                    note: notesController.text,
                                    account: data.transaction!.account,
                                    destination: data.transaction?.account,
                                    category: data.transaction?.category,
                                    typeSpending: data.selectedType),
                              ),
                            )),
                        backgroundColor: Colors.blueAccent,
                        label: const Text(
                          'Save',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.centerFloat,
                );
              });
        },
      ),
    );
  }
}
