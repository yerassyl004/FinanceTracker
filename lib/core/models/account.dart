class Account {
  final String icon;
  final String title;
  int cash;

  Account({
    required this.cash,
    required this.icon,
    required this.title
  });

  Map<String, dynamic> toJson() {
    return {
      'cash': cash,
      'icon': icon,
      'title': title,
    };
  }

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      cash: json['cash'],
      icon: json['icon'],
      title: json['title'],
    );
  }
}