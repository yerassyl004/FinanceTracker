import 'package:uuid/uuid.dart';

class Account {
  final String id;
  String icon;
  String title;
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

  Account copyWith({double? cash, String? icon, String? title}) {
    return Account(
        id: id,
        cash: cash ?? this.cash,
        icon: icon ?? this.icon,
        title: title ?? this.title);
  }

  Account sendAmount(Account account) {
    return account.copyWith(cash: cash - account.cash);
  }

  Account topUpAmount(Account account) {
    return account.copyWith(cash: cash + account.cash);
  }
}

List<Account> getDefaultAccounts() {
  return [
    Account(cash: 10000, icon: 'card', title: 'Card'),
    Account(cash: 10000, icon: 'cash_icon', title: 'Cash'),
    Account(cash: 5000, icon: 'saving_icon', title: 'Saving'),
  ];
}
