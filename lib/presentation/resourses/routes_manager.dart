import 'package:finance_app/presentation/create_transaction/ui/pages/new_create_transactions_page.dart';
import 'package:finance_app/presentation/tab_bar/ui/page/tab_bar_page.dart';
import 'package:finance_app/presentation/transaction_category_list/ui/page/transactions_category.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String addTransaction = "/addTransaction";
  static const String createTransactionPage = "/createTransactionPage";
  static const String analysis = "/analysis";
  static const String mainRoute = "/";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.createTransactionPage:
        if (routeSettings.arguments is CreateTransactionsArgument) {
          final args = routeSettings.arguments as CreateTransactionsArgument;
          return MaterialPageRoute(
            builder: (_) {
              return NewCreateTransactionsPage(
                args: args,
              );
            },
          );
        }
        return unDefinedRoute();

      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const TabBarPage());
      case Routes.analysis:
        if (routeSettings.arguments is TransactionsCategoryArguments) {
          final args = routeSettings.arguments as TransactionsCategoryArguments;

          return MaterialPageRoute(
              builder: (_) => TransactionsCategoryPage(
                    args: args,
                  ));
        }
        return unDefinedRoute();
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text('AppStrings.noRouteFound'),
              ),
              body: Center(child: Text('AppStrings.noRouteFound')),
            ));
  }
}
