import 'package:uuid/uuid.dart';

class Category {
  final String id;
  CategoryType type;
  String icon;
  String title;
  // bool isExpense;

  Category({
    required this.title,
    required this.icon,
    // required this.isExpense,
    required this.type,
    String? id,
  }) : id = id ?? const Uuid().v4();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'icon': icon,
      // 'isExpense': isExpense
      'type': type.index,
    };
  }

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      type: CategoryType.values[json['type']],
      id: json['id'],
      title: json['title'],
      icon: json['icon'],
      // isExpense: json['isExpense']
    );
  }
}

enum CategoryType {
  income,
  expense,
}

extension CategoryTypeExtension on CategoryType {
  int get value {
    switch (this) {
      case CategoryType.income:
        return 0;
      case CategoryType.expense:
        return 1;
    }
  }

  String get name {
    switch (this) {
      case CategoryType.income:
        return 'income';
      case CategoryType.expense:
        return 'expense';
    }
  }

  static CategoryType fromValue(int value) {
    switch (value) {
      case 0:
        return CategoryType.income;
      case 1:
        return CategoryType.expense;
      default:
        throw ArgumentError('Invalid CategoryType value');
    }
  }
}


List<Category> getDefaultExpenseCategories() {
    return [
      Category(title: 'Food', icon: 'foods_icon', type: CategoryType.expense),
      Category(title: 'Transport', icon: 'car_icon', type: CategoryType.expense),
      Category(title: 'Clothes', icon: 'clothes_icon', type: CategoryType.expense),
      Category(title: 'Shopping', icon: 'shopping_icon', type: CategoryType.expense),
      Category(title: 'Home', icon: 'home_icon', type: CategoryType.expense),
      Category(title: 'Health', icon: 'health_icon', type: CategoryType.expense),
      Category(title: 'Bills', icon: 'bills_icon', type: CategoryType.expense),
      Category(title: 'Education', icon: 'education_icon', type: CategoryType.expense),
      Category(title: 'Beauty', icon: 'beauty_icon', type: CategoryType.expense),
    ];
  }

  List<Category> getDefaultIncomeCategories() {
    return [
      Category(title: 'Salary', icon: 'salary_icon', type: CategoryType.income),
      Category(title: 'Awards', icon: 'awards_icon', type: CategoryType.income),
      Category(title: 'Rental', icon: 'rental_icon', type: CategoryType.income),
      Category(title: 'Sale', icon: 'sale_icon', type: CategoryType.income),
      Category(title: 'Grants', icon: 'grants_icon', type: CategoryType.income),
      Category(title: 'Coupons', icon: 'coupons_icon', type: CategoryType.income),
      Category(title: 'Refunds', icon: 'refunds_icon', type: CategoryType.income),
      Category(title: 'Lottery', icon: 'lottery_icon', type: CategoryType.income)
    ];
  }