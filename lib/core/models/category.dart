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
  expense, income
}