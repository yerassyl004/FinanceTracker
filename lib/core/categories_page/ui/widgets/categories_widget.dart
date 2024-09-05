import 'package:finance_app/core/accounts_page/ui/widget/pop_up_menu_text.dart';
import 'package:finance_app/core/categories_page/service/category_edit_service.dart';
import 'package:finance_app/core/models/category.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  final VoidCallback categoryDeleted;
  final Function(Category) categoryEdit;
  final Category category;
  const CategoriesWidget(
      {super.key,
      required this.categoryEdit,
      required this.category,
      required this.categoryDeleted});

  void onSelected(BuildContext context, int item) {
    CategoryEditService service = CategoryEditService();
    switch (item) {
      case 0:
        categoryEdit(category);
        break;
      case 1:
        service.deleteAccount(category);
        categoryDeleted();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          Image.asset(
            'assets/images/${category.icon}.png',
            width: 40,
            height: 40,
          ),
          const SizedBox(width: 8),
          Text(
            category.title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const Spacer(),
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
              ),
              PopupMenuButton<int>(
                color: Colors.white,
                onSelected: (item) => onSelected(context, item),
                itemBuilder: (context) => [
                  const PopupMenuItem<int>(
                    value: 0,
                    child: PopUpMenuText(title: 'Edit'),
                  ),
                  const PopupMenuItem<int>(
                    value: 1,
                    child: PopUpMenuText(title: 'Delete'),
                  ),
                ],
                icon: const Icon(Icons.more_horiz, color: Colors.transparent),
                offset: const Offset(0, 45),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
