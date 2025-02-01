// import 'package:finance_app/data/data_source/local/transaction_dao.dart';
// import 'package:finance_app/domain/models/transaction.dart';
// import 'package:finance_app/domain/models/type_spending.dart';

// class HomeRepository {
//   final TransactionDao _transactionDao = TransactionDao();

//   Future<List<Transaction>> loadTransactions(DateTime selectedDate) async {
//     return await _transactionDao.getTransactions(selectedDate);
//   }

//   double expenseCount(
//       List<Transaction> transactionsFuture) {
//     final transactions = transactionsFuture;
//     var count = 0.0;
//     for (var transaction in transactions) {
//       if (transaction.typeSpending == TypeSpending.expense) {
//         count += transaction.cash;
//       }
//     }
//     return count;
//   }

//   double incomeCount(
//       List<Transaction> transactionsFuture) {
//     final transactions = transactionsFuture;
//     var count = 0.0;
//     for (var transaction in transactions) {
//       if (transaction.typeSpending == TypeSpending.income) {
//         count += transaction.cash;
//       }
//     }
//     return count;
//   }
// }
