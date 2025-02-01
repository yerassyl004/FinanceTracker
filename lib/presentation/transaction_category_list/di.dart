import 'package:finance_app/app/di.dart';
import 'package:finance_app/presentation/transaction_category_list/bloc/transaction_category_bloc.dart';
import 'package:finance_app/presentation/transaction_category_list/ui/page/transactions_category.dart';

extension TransactionCategoryDI on DI {
  TransactionCategoryBloc getTransactionCategoryBloc(TransactionsCategoryArguments args) {
    return TransactionCategoryBloc(getIt(), args);
  }
}