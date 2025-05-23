import 'package:auto_route/auto_route.dart';
import 'package:finance_app/presentation/accounts_page/ui/page/accounts_page.dart';
import 'package:finance_app/presentation/analysis/ui/pages/analysis_page.dart';
import 'package:finance_app/presentation/categories_page/ui/pages/categories_page.dart';
import 'package:finance_app/presentation/home/ui/pages/new_home_page.dart';
import 'package:finance_app/presentation/resourses/color_manager.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:finance_app/presentation/resourses/values_manager.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    NewHomePage(),
    AnalysisPage(),
    AccountsPage(),
    CategoriesPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: ColorManager.lightGrey, spreadRadius: AppSize.s1)
        ]),
        child: BottomNavigationBar(
          selectedItemColor: ColorManager.primary,
          unselectedItemColor: ColorManager.grey,
          backgroundColor: Colors.grey.shade100,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.checklist),
              label: AppStrings.records,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: AppStrings.analysis,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              label: AppStrings.accounts,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: AppStrings.categories,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
