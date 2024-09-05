import 'package:uuid/uuid.dart';

class Category {
  final String id;
  // CategoryType type;
  String icon;
  String title;

  Category({
    required this.title,
    required this.icon,
    String? id,
  }) : id = id ?? Uuid().v4();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'icon': icon,
      // 'type': type,
    };
  }

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      // type: json['type'],
      id: json['id'],
      title: json['title'],
      icon: json['icon'],
    );
  }
}

enum CategoryType {
  expense, income
}