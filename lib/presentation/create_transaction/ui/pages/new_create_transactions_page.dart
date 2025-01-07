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
            transaction: args?.transaction)
          ..add(CreateTransactionEvent.initial(
              data: CreateTransactionData.init())),
        child: NewCreateTransactionView());
  }
}

class NewCreateTransactionView extends StatelessWidget {
  const NewCreateTransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateTransactionBloc, CreateTransactionState>(
      listener: (context, state) {
        if (state is SuccessTransactionState) {
          Navigator.pop(context, true);
        }
      },
      builder: (context, state) {
        final bloc = context.read<CreateTransactionBloc>();
        final amountController = TextEditingController(
          text: state.data.transaction?.cash.toString() ?? '',
        );
        final notesController = TextEditingController(
          text: state.data.transaction?.note ?? '',
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
                                                toAccount: null,
                                                fromAccount: null,
                                                category: null,
                                                transaction: data.transaction?.copyWith(0, DateTime.now(), '', TypeSpending.transfer, null, null, null),
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
                                                toAccount: null,
                                                fromAccount: null,
                                                category: null,
                                                transaction: data.transaction?.copyWith(0, DateTime.now(), '', TypeSpending.expense, null, null, null),
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
                                                toAccount: null,
                                                fromAccount: null,
                                                category: null,
                                                transaction: data.transaction?.copyWith(0, DateTime.now(), '', TypeSpending.income, null, null, null),
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
                                        image: data.fromAccount?.icon ??
                                            'wallet_icon',
                                        title: data.fromAccount?.title ??
                                            'Account',
                                        onTap: () async {
                                          showBarModalBottomSheet(
                                              expand: false,
                                              context: context,
                                              backgroundColor:
                                                  Colors.transparent,
                                              builder: (context) {
                                                return AddAccountsPage(
                                                  fromAccount: true,
                                                  onTap: (account) async {
                                                    bloc.add(CreateTransactionEvent
                                                        .edit(
                                                            data: data.copyWith(
                                                                fromAccount:
                                                                    account)));
                                                  },
                                                  data: data,
                                                );
                                              });
                                        },
                                        isSelected: data.fromAccount != null,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    data.selectedType == TypeSpending.transfer
                                        ? Expanded(
                                            child: TransferInfoWidget(
                                            image: data.toAccount?.icon ??
                                                'wallet_icon',
                                            title: data.toAccount?.title ??
                                                'Account',
                                            onTap: () =>
                                                showBarModalBottomSheet(
                                                    expand: false,
                                                    context: context,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    builder: (context) =>
                                                        AddAccountsPage(
                                                          data: data,
                                                          onTap:
                                                              (account) async {
                                                            bloc.add(CreateTransactionEvent.edit(
                                                                data: data.copyWith(
                                                                    toAccount:
                                                                        account)));
                                                          },
                                                        )),
                                            isSelected: data.toAccount != null,
                                          ))
                                        : Expanded(
                                            child: TransferInfoWidget(
                                            image: data.category?.icon ??
                                                'category_icon',
                                            title: data.category?.title ??
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
                                                    (category) async {
                                                  bloc.add(
                                                      CreateTransactionEvent
                                                          .edit(data: data.copyWith(category: category)));
                                                  Navigator.pop(context);
                                                },
                                                isExpense: data.selectedType ==
                                                    TypeSpending.expense,
                                                data: data,
                                              ),
                                            ),
                                            isSelected:
                                                data.category !=
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
                                id: data.transaction?.id,
                                  cash: double.parse(amountController.text),
                                  date: data.transaction?.date ?? DateTime.now(),
                                  note: notesController.text,
                                  account: data.fromAccount,
                                  destination: data.toAccount,
                                  category: data.category,
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
    );
  }
}
