import 'package:finance_app/domain/models/category.dart';

List<String> getDefoultImageAssets() {
  final imageAssets = [
    'card',
    'wallet_icon',
    'saving_icon',
    'visa_icon',
    'master_card_icon'
  ];
  return imageAssets;
}

List<Category> getDefaultExpenseCategories() {
  return [
    Category(title: 'Food', icon: 'foods_icon', type: CategoryType.expense),
    Category(title: 'Transport', icon: 'car_icon', type: CategoryType.expense),
    Category(
        title: 'Clothes', icon: 'clothes_icon', type: CategoryType.expense),
    Category(
        title: 'Shopping', icon: 'shopping_icon', type: CategoryType.expense),
    Category(title: 'Home', icon: 'home_icon', type: CategoryType.expense),
    Category(title: 'Health', icon: 'health_icon', type: CategoryType.expense),
    Category(title: 'Bills', icon: 'bills_icon', type: CategoryType.expense),
    Category(
        title: 'Education', icon: 'education_icon', type: CategoryType.expense),
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
