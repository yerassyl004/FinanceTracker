import 'package:uuid/uuid.dart';

class Account {
  final String id;
  final String icon;
  final String title;
  double cash;

  Account({
    required this.cash,
    required this.icon,
    required this.title,
    String? id,
  }) : id = id ?? Uuid().v4();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'cash': cash,
      'icon': icon,
      'title': title,
    };
  }

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      id: json['id'],
      cash: json['cash'],
      icon: json['icon'],
      title: json['title'],
    );
  }
}
