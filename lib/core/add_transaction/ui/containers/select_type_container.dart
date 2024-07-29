// import 'package:finance_app/core/add_transaction/ui/widget/types_spending_widget.dart';
// import 'package:finance_app/core/models/account.dart';
// import 'package:finance_app/core/models/category.dart';
// import 'package:finance_app/core/models/type_spending.dart';
// import 'package:flutter/material.dart';

// class SelectTypeContainer extends StatelessWidget {
//   SelectTypeContainer({super.key});
//   Category? selectedCategory;
//   Account? selectedAccount;
//   Account? receiverAccount;

//   String _setTypeSpending(TypeSpending typeSpending) {
//     switch (typeSpending) {
//       case TypeSpending.expense:
//         return 'Expense';
//       case TypeSpending.income:
//         return 'Income';
//       case TypeSpending.transfer:
//         return 'Transfer';
//     }
//   }

//   void _typeSpendingChange(TypeSpending typeSpending) {
//     selectedAccount = null;
//     selectedCategory = null;
//     receiverAccount = null;
//     _amountController.text = '';
//     _notesController.text = '';
//     setState(() {
//       widget.selectedType = typeSpending;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       TypesSpendingWidget(
//                         title: _setTypeSpending(TypeSpending.transfer),
//                         isSelected:
//                             widget.selectedType == TypeSpending.transfer,
//                         onTap: () => _typeSpendingChange(TypeSpending.transfer),
//                       ),
//                       Container(
//                         width: 1,
//                         height: 20,
//                         color: Colors.grey,
//                         margin: const EdgeInsets.symmetric(horizontal: 16.0),
//                       ),
//                       TypesSpendingWidget(
//                         title: _setTypeSpending(TypeSpending.expense),
//                         isSelected: widget.selectedType == TypeSpending.expense,
//                         onTap: () => _typeSpendingChange(TypeSpending.expense),
//                       ),
//                       Container(
//                         width: 1,
//                         height: 20,
//                         color: Colors.grey,
//                         margin: const EdgeInsets.symmetric(horizontal: 16.0),
//                       ),
//                       TypesSpendingWidget(
//                         title: _setTypeSpending(TypeSpending.income),
//                         isSelected: widget.selectedType == TypeSpending.income,
//                         onTap: () => _typeSpendingChange(TypeSpending.income),
//                       ),
//                     ],
//                   ),;
//   }
// }