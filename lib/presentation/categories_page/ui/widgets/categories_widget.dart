import 'package:finance_app/app/extensions.dart';
import 'package:finance_app/presentation/accounts_page/ui/widget/pop_up_menu_text.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  final Function(Category) categoryDeleted;
  final Function(Category) categoryEdit;
  final Category category;
  const CategoriesWidget(
      {super.key,
      required this.categoryEdit,
      required this.category,
      required this.categoryDeleted});

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        categoryEdit(category);
        break;
      case 1:
        categoryDeleted(category);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          Image.asset(
            'assets/images/${category.icon}.png',
            width: 40,
            height: 40,
          ),
          8.pw,
          Text(
            category.title,
            style: AppTextStyle.body18Medium()
          ),
          Spacer(),
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz),
              ),
              PopupMenuButton<int>(
                color: Colors.white,
                onSelected: (item) => onSelected(context, item),
                itemBuilder: (context) => [
                  PopupMenuItem<int>(
                    value: 0,
                    child: PopUpMenuText(title: AppStrings.edit),
                  ),
                  PopupMenuItem<int>(
                    value: 1,
                    child: PopUpMenuText(title: AppStrings.delete),
                  ),
                ],
                icon: Icon(Icons.more_horiz, color: Colors.transparent),
                offset: Offset(0, 45),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
