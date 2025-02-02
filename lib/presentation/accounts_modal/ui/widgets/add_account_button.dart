import 'package:finance_app/presentation/resourses/color_manager.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAccountButton extends StatelessWidget {
  final VoidCallback onTap;
  const AddAccountButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.blueAccent),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              CupertinoIcons.add_circled,
              color: Colors.white,),
            SizedBox(width: 6),
            Text(
              AppStrings.addNewAccount,
              style: AppTextStyle.body18Medium().copyWith(color: ColorManager.white),
            ),
          ],
        ),
      ),
    );
  }
}
