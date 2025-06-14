import 'package:flutter_test/flutter_test.dart';
import 'package:finance_app/data/repository/repository_impl.dart';
import 'package:finance_app/domain/models/transaction.dart';
import 'package:finance_app/domain/models/type_spending.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/data/data_source/local/account_dao.dart';
import 'package:finance_app/data/data_source/local/category_dao.dart';
import 'package:finance_app/data/data_source/local/transaction_dao.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'repository_impl_test.mocks.dart';

@GenerateMocks([AccountDao, CategoryDao, TransactionDao])
void main() {
  late RepositoryImpl repository;
  late MockAccountDao mockAccountDao;
  late MockCategoryDao mockCategoryDao;
  late MockTransactionDao mockTransactionDao;

  // Mock data
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
    mockAccountDao = MockAccountDao();
    mockCategoryDao = MockCategoryDao();
    mockTransactionDao = MockTransactionDao();
    repository = RepositoryImpl(mockCategoryDao, mockAccountDao, mockTransactionDao);

    when(mockAccountDao.getAccounts()).thenAnswer((_) async => mockAccounts);
    when(mockTransactionDao.getTransactions(any)).thenAnswer((_) async => mockTransactions);
  });

  group('expenseAmount', () {
    test('should return 0 when transactions list is empty', () async {
      // Arrange
      final transactions = <Transaction>[];

      // Act
      final result = await repository.expenseAmount(transactions);

      // Assert
      expect(result, 0.0);
    });

    test('should calculate total expense amount correctly', () async {
      // Arrange
      final transactions = mockTransactions;

      // Act
      final result = await repository.expenseAmount(transactions);

      // Assert
      expect(result, 300.0); // Only expenses (100 + 200) should be counted
    });
  });

  group('loadAccountData', () {
    test('should return default accounts when no accounts exist', () async {
      when(mockAccountDao.getAccounts()).thenAnswer((_) async => []);

      final result = await repository.loadAccountData();

      expect(result.isRight(), true);
      result.fold(
        (failure) => fail('Should not return failure'),
        (accounts) {
          expect(accounts.length, 3); // Default accounts count
          expect(accounts[0].title, 'Card');
          expect(accounts[1].title, 'Cash');
          expect(accounts[2].title, 'Saving');
        },
      );
    });

    test('should return existing accounts when accounts exist', () async {
      final result = await repository.loadAccountData();

      expect(result.isRight(), true);
      result.fold(
        (failure) => fail('Should not return failure'),
        (accounts) {
          expect(accounts.length, mockAccounts.length);
          expect(accounts[0].title, mockAccounts[0].title);
          expect(accounts[1].title, mockAccounts[1].title);
        },
      );
    });
  });
} 