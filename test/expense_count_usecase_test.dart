import 'package:flutter_test/flutter_test.dart';
import 'package:finance_app/domain/usecases.dart/transactions/expence_count_usecase.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/models/type_spending.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/domain/repository/repository.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'expense_count_usecase_test.mocks.dart';

@GenerateMocks([Repository])
void main() {
  late ExpenceCountUsecase usecase;
  late MockRepository mockRepository;

  final mockAccounts = [
    Account(cash: 1000.0, icon: 'card', title: 'Card'),
    Account(cash: 500.0, icon: 'cash', title: 'Cash'),
  ];

  final mockTransactions = [
    Transaction(
      cash: 100.0,
      date: DateTime.now(),
      note: 'Test expense 1',
      typeSpending: TypeSpending.expense,
      account: mockAccounts[0],
    ),
    Transaction(
      cash: 200.0,
      date: DateTime.now(),
      note: 'Test expense 2',
      typeSpending: TypeSpending.expense,
      account: mockAccounts[1],
    ),
    Transaction(
      cash: 300.0,
      date: DateTime.now(),
      note: 'Test income',
      typeSpending: TypeSpending.income,
      account: mockAccounts[0],
    ),
  ];

  setUp(() {
    mockRepository = MockRepository();
    usecase = ExpenceCountUsecase(mockRepository);
  });

  group('ExpenseCountUsecase - Tests for calculating total expense amount from transactions', () {
    test('should return total expense amount when transactions are provided', () async {
      when(mockRepository.expenseAmount(mockTransactions))
          .thenAnswer((_) async => 300.0);

      final result = await usecase.execute(mockTransactions);

      expect(result.isRight(), true);
      result.fold(
        (failure) => fail('Should not return failure'),
        (amount) {
          expect(amount, 300.0);
          verify(mockRepository.expenseAmount(mockTransactions)).called(1);
        },
      );
    });

    test('should return 0 when empty transactions list is provided', () async {
      final emptyTransactions = <Transaction>[];
      when(mockRepository.expenseAmount(emptyTransactions))
          .thenAnswer((_) async => 0.0);

      final result = await usecase.execute(emptyTransactions);

      expect(result.isRight(), true);
      result.fold(
        (failure) => fail('Should not return failure'),
        (amount) {
          expect(amount, 0.0);
          verify(mockRepository.expenseAmount(emptyTransactions)).called(1);
        },
      );
    });

    test('should return failure when repository throws an error', () async {
      when(mockRepository.expenseAmount(mockTransactions))
          .thenThrow(Exception('Database error'));

      final result = await usecase.execute(mockTransactions);

      expect(result.isLeft(), true);
      result.fold(
        (failure) {
          expect(failure.code, -1);
          expect(failure.message, 'Exception: Database error');
        },
        (amount) => fail('Should return failure'),
      );
    });
  });
} 