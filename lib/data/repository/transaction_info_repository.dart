import 'package:finance_app/data/data_source/local/transaction_dao.dart';
import 'package:finance_app/domain/models/transaction.dart';

class TransactionInfoRepository {
  final TransactionDao _transactionDao = TransactionDao();

  Future<void> removeTransaction(Transaction transaction) async {
    await _transactionDao.deleteTransaction(transaction.id);
  }
}
