import 'package:finance_app/data/repository/home_reposirory.dart';
import 'package:finance_app/domain/models/transaction.dart';

class HomeUsecase {
  final HomeRepository homeRepository;

  HomeUsecase(this.homeRepository);

  Future<List<Transaction>> execute(DateTime selectedDate) async {
    return await homeRepository.loadTransactions(selectedDate);
  }

  double getExpense(List<Transaction> transactions) {
    return homeRepository.expenseCount(transactions);
  }

  double getIncome(List<Transaction> transactions) {
    return homeRepository.incomeCount(transactions);
  }
}
