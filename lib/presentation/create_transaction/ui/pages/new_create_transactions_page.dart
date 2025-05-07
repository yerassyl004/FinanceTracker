import 'package:auto_route/auto_route.dart';
import 'package:finance_app/app/di.dart';
import 'package:finance_app/app/extensions.dart';
import 'package:finance_app/presentation/accounts_modal/ui/pages/accounts_modal.dart';
import 'package:finance_app/presentation/categories/ui/pages/categories_page.dart';
import 'package:finance_app/presentation/create_transaction/bloc/create_transaction_bloc.dart';
import 'package:finance_app/presentation/create_transaction/di.dart';
import 'package:finance_app/presentation/resourses/color_manager.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:finance_app/presentation/create_transaction/ui/widget/input_textField_widget.dart';
import 'package:finance_app/presentation/create_transaction/ui/widget/transfer_info_widget.dart';
import 'package:finance_app/presentation/create_transaction/ui/widget/types_spending_widget.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/models/type_spending.dart';

class CreateTransactionsArgument {
  final Transaction? transaction;
  const CreateTransactionsArgument(this.transaction);
}

@RoutePage()
class NewCreateTransactionsPage extends StatelessWidget {
  final CreateTransactionsArgument? args;
  const NewCreateTransactionsPage({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => di.getCreateTransactionBloc(args?.transaction)
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 12.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  color: Colors.grey.shade100,
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.arrow_back_ios),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                      8.pw,
                                      Text(
                                        AppStrings.newTransaction,
                                        style: AppTextStyle.body22Medium(),
                                      ),
                                    ],
                                  ),
                                ),
                                16.ph,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TypesSpendingWidget(
                                        title: AppStrings.transfer,
                                        isSelected: data.selectedType ==
                                            TypeSpending.transfer,
                                        onTap: () => context
                                            .read<CreateTransactionBloc>()
                                            .add(CreateTransactionEvent.edit(
                                              data: data.copyWith(
                                                  toAccount: null,
                                                  fromAccount: null,
                                                  category: null,
                                                  transaction:
                                                      data.transaction?.clear(),
                                                  selectedType:
                                                      TypeSpending.transfer),
                                            ))),
                                    Container(
                                      width: 1,
                                      height: 20,
                                      color: Colors.grey,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                    ),
                                    TypesSpendingWidget(
                                        title: AppStrings.expenseText,
                                        isSelected: data.selectedType ==
                                            TypeSpending.expense,
                                        onTap: () => context
                                            .read<CreateTransactionBloc>()
                                            .add(CreateTransactionEvent.edit(
                                              data: data.copyWith(
                                                  toAccount: null,
                                                  fromAccount: null,
                                                  category: null,
                                                  transaction:
                                                      data.transaction?.clear(),
                                                  selectedType:
                                                      TypeSpending.expense),
                                            ))),
                                    Container(
                                      width: 1,
                                      height: 20,
                                      color: Colors.grey,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                    ),
                                    TypesSpendingWidget(
                                        title: AppStrings.incomeText,
                                        isSelected: data.selectedType ==
                                            TypeSpending.income,
                                        onTap: () => context
                                            .read<CreateTransactionBloc>()
                                            .add(CreateTransactionEvent.edit(
                                              data: data.copyWith(
                                                  toAccount: null,
                                                  fromAccount: null,
                                                  category: null,
                                                  transaction:
                                                      data.transaction?.clear(),
                                                  selectedType:
                                                      TypeSpending.income),
                                            ))),
                                  ],
                                ),
                                32.ph,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: TransferInfoWidget(
                                        image: data.fromAccount?.icon ??
                                            'wallet_icon',
                                        title: data.fromAccount?.title ??
                                            AppStrings.accounts,
                                        onTap: () async {
                                          showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            builder: (context) {
                                              return DraggableScrollableSheet(
                                                initialChildSize: 0.5,
                                                minChildSize: 0.3,
                                                maxChildSize: 0.95,
                                                expand: false,
                                                builder: (context,
                                                    scrollController) {
                                                  return Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.vertical(
                                                              top: Radius
                                                                  .circular(
                                                                      16)),
                                                    ),
                                                    child: AddAccountsPage(
                                                      fromAccount: true,
                                                      onTap: (account) async {
                                                        debugPrint(
                                                            'Accounts::: ${account.toJson()}');
                                                        bloc.add(
                                                          CreateTransactionEvent
                                                              .edit(
                                                            data: data.copyWith(
                                                                fromAccount:
                                                                    account),
                                                          ),
                                                        );
                                                      },
                                                      data: data,
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        },
                                        isSelected: data.fromAccount != null,
                                      ),
                                    ),
                                    8.pw,
                                    data.selectedType == TypeSpending.transfer
                                        ? Expanded(
                                            child: TransferInfoWidget(
                                            image: data.toAccount?.icon ??
                                                'wallet_icon',
                                            title: data.toAccount?.title ??
                                                AppStrings.account,
                                            onTap: () => showModalBottomSheet(
                                              context: context,
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              builder: (context) {
                                                return DraggableScrollableSheet(
                                                  initialChildSize: 0.5,
                                                  minChildSize: 0.3,
                                                  maxChildSize: 0.95,
                                                  expand: false,
                                                  builder: (context,
                                                      scrollController) {
                                                    return Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.vertical(
                                                                top: Radius
                                                                    .circular(
                                                                        16)),
                                                      ),
                                                      child: AddAccountsPage(
                                                        data: data,
                                                        onTap: (account) async {
                                                          debugPrint(
                                                              'Accounts::: ${account.toJson()}');
                                                          bloc.add(
                                                            CreateTransactionEvent
                                                                .edit(
                                                              data: data.copyWith(
                                                                  toAccount:
                                                                      account),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                            isSelected: data.toAccount != null,
                                          ))
                                        : Expanded(
                                            child: TransferInfoWidget(
                                            image: data.category?.icon ??
                                                'category_icon',
                                            title: data.category?.title ??
                                                AppStrings.categoriy,
                                            onTap: () => showModalBottomSheet(
                                              context: context,
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              builder: (context) {
                                                return DraggableScrollableSheet(
                                                  initialChildSize: 0.6,
                                                  minChildSize: 0.3,
                                                  maxChildSize: 0.95,
                                                  expand: false,
                                                  builder: (context,
                                                      scrollController) {
                                                    return Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius.vertical(
                                                                top: Radius
                                                                    .circular(
                                                                        16)),
                                                      ),
                                                      child: CategoriesPage(
                                                        onCategorySelected:
                                                            (category) async {
                                                          bloc.add(
                                                            CreateTransactionEvent
                                                                .edit(
                                                              data: data.copyWith(
                                                                  category:
                                                                      category),
                                                            ),
                                                          );
                                                          context.pop();
                                                        },
                                                        isExpense:
                                                            data.selectedType ==
                                                                TypeSpending
                                                                    .expense,
                                                        data: data,
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                            isSelected: data.category != null,
                                          )),
                                  ],
                                ),
                                16.ph,
                                InputTextfieldWidget(
                                    hintText: '0',
                                    inputType: TextInputType.number,
                                    maxLine: 1,
                                    minLine: 1,
                                    controller: amountController,
                                    onChanged: (text) => context
                                        .read<CreateTransactionBloc>()
                                        .add(CreateTransactionEvent.edit(
                                            data: data.copyWith(
                                                transaction: data.transaction
                                                    ?.copyWith(
                                                        cash: double.tryParse(
                                                                text) ??
                                                            0))))),
                                12.ph,
                                InputTextfieldWidget(
                                  hintText: AppStrings.addNotes,
                                  inputType: TextInputType.text,
                                  maxLine: 3,
                                  minLine: 2,
                                  controller: notesController,
                                ),
                                12.ph,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                        DateFormat('MMM d, EEEE')
                                            .format(DateTime.now()),
                                        style: AppTextStyle.body16Regular()),
                                    Container(
                                      width: 1,
                                      height: 20,
                                      color: Colors.grey,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 8.0),
                                    ),
                                    Text(
                                        DateFormat('h:mm a')
                                            .format(DateTime.now()),
                                        style: AppTextStyle.body16Regular()),
                                  ],
                                ),
                                62.ph,
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
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 0),
                    child: FloatingActionButton.extended(
                      onPressed: () => context
                          .read<CreateTransactionBloc>()
                          .add(CreateTransactionEvent.saveTransaction(
                            data: data.copyWith(
                              transaction: Transaction(
                                  id: data.transaction?.id,
                                  cash: double.parse(amountController.text),
                                  date:
                                      data.transaction?.date ?? DateTime.now(),
                                  note: notesController.text,
                                  account: data.fromAccount,
                                  destination: data.toAccount,
                                  category: data.category,
                                  typeSpending: data.selectedType),
                            ),
                          )),
                      backgroundColor: Colors.blueAccent,
                      label: Text(AppStrings.save,
                          style: AppTextStyle.bold16()
                              .copyWith(color: ColorManager.white)),
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
