import 'package:uuid/uuid.dart';

class Category {
  final String id;
  final String icon;
  final String title;

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
    };
  }

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      title: json['title'],
      icon: json['icon'],
    );
  }
}