// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [NewCreateTransactionsPage]
class NewCreateTransactionsRoute
    extends PageRouteInfo<NewCreateTransactionsRouteArgs> {
  NewCreateTransactionsRoute({
    Key? key,
    required CreateTransactionsArgument? args,
    List<PageRouteInfo>? children,
  }) : super(
         NewCreateTransactionsRoute.name,
         args: NewCreateTransactionsRouteArgs(key: key, args: args),
         initialChildren: children,
       );

  static const String name = 'NewCreateTransactionsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NewCreateTransactionsRouteArgs>();
      return NewCreateTransactionsPage(key: args.key, args: args.args);
    },
  );
}

class NewCreateTransactionsRouteArgs {
  const NewCreateTransactionsRouteArgs({this.key, required this.args});

  final Key? key;

  final CreateTransactionsArgument? args;

  @override
  String toString() {
    return 'NewCreateTransactionsRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [TabBarPage]
class TabBarRoute extends PageRouteInfo<void> {
  const TabBarRoute({List<PageRouteInfo>? children})
    : super(TabBarRoute.name, initialChildren: children);

  static const String name = 'TabBarRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TabBarPage();
    },
  );
}

/// generated route for
/// [TransactionsCategoryPage]
class TransactionsCategoryRoute
    extends PageRouteInfo<TransactionsCategoryRouteArgs> {
  TransactionsCategoryRoute({
    Key? key,
    required TransactionsCategoryArguments args,
    List<PageRouteInfo>? children,
  }) : super(
         TransactionsCategoryRoute.name,
         args: TransactionsCategoryRouteArgs(key: key, args: args),
         initialChildren: children,
       );

  static const String name = 'TransactionsCategoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TransactionsCategoryRouteArgs>();
      return TransactionsCategoryPage(key: args.key, args: args.args);
    },
  );
}

class TransactionsCategoryRouteArgs {
  const TransactionsCategoryRouteArgs({this.key, required this.args});

  final Key? key;

  final TransactionsCategoryArguments args;

  @override
  String toString() {
    return 'TransactionsCategoryRouteArgs{key: $key, args: $args}';
  }
}
