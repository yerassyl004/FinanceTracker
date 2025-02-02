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

  Category copyWith({String? title, String? icon, CategoryType? type}) {
    return Category(
        id: id,
        title: title ?? this.title,
        icon: icon ?? this.icon,
        type: type ?? this.type);
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

List<String> getCategoryImages(CategoryType type) {
  final List<String> imageExpenseAssets = [
    'foods_icon',
    'car_icon',
    'clothes_icon',
    'shopping_icon',
    'home_icon',
    'health_icon',
    'bills_icon',
    'education_icon',
    'beauty_icon',
  ];

  final List<String> imageIncomeAssets = [
    'salary_icon',
    'awards_icon',
    'rental_icon',
    'sale_icon',
    'grants_icon',
    'coupons_icon',
    'refunds_icon',
    'lottery_icon',
  ];
  return type == CategoryType.expense ? imageExpenseAssets : imageIncomeAssets;
}
