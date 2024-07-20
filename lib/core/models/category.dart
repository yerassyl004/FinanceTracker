class Category {
  final String icon;
  final String title;

  const Category({
    required this.title,
    required this.icon
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'icon': icon,
    };
  }

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      title: json['title'],
      icon: json['icon'],
    );
  }
}