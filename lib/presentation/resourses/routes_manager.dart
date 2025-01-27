import 'package:finance_app/app/di.dart';
import 'package:finance_app/presentation/create_transaction/bloc/create_transaction_bloc.dart';
import 'package:finance_app/presentation/create_transaction/di.dart';
import 'package:finance_app/presentation/create_transaction/repositories/create_transaction_repository.dart';
import 'package:finance_app/presentation/create_transaction/ui/pages/new_create_transactions_page.dart';
import 'package:finance_app/presentation/tab_bar/ui/page/tab_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  static const String addTransaction = "/addTransaction";
  static const String createTransactionPage = "/createTransactionPage";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.createTransactionPage:
        if (routeSettings.arguments is CreateTransactionsArgument) {
          final args = routeSettings.arguments as CreateTransactionsArgument;
          return MaterialPageRoute(
            builder: (_) => BlocProvider<CreateTransactionBloc>(
              create: (_) => di.getCreateTransactionBloc(
                repository: CreateTransactionRepository(),
                transaction: args.transaction,
              ),
              child: NewCreateTransactionsPage(args: args),
            ),
          );
        }
        return unDefinedRoute();

      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const TabBarPage());
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
