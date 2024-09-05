import 'package:finance_app/core/models/category.dart';

class CategoryService {

  List<Category> getDefaultExpenseCategories() {
    return [
      Category(title: 'Food', icon: 'foods_icon'),
      Category(title: 'Transport', icon: 'car_icon'),
      Category(title: 'Clothes', icon: 'clothes_icon'),
      Category(title: 'Shopping', icon: 'shopping_icon'),
      Category(title: 'Home', icon: 'home_icon'),
      Category(title: 'Health', icon: 'health_icon'),
      Category(title: 'Bills', icon: 'bills_icon'),
      Category(title: 'Education', icon: 'education_icon'),
      Category(title: 'Beauty', icon: 'beauty_icon'),
    ];
  }

  List<Category> getDefaultIncomeCategories() {
    return [
      Category(title: 'Salary', icon: 'salary_icon'),
      Category(title: 'Awards', icon: 'awards_icon'),
      Category(title: 'Rental', icon: 'rental_icon'),
      Category(title: 'Sale', icon: 'sale_icon'),
      Category(title: 'Grants', icon: 'grants_icon'),
      Category(title: 'Coupons', icon: 'coupons_icon'),
      Category(title: 'Refunds', icon: 'refunds_icon'),
      Category(title: 'Lottery', icon: 'lottery_icon')
    ];
  }
}
