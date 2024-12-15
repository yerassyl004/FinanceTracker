import 'package:finance_app/presentation/add_transaction/ui/pages/add_transaction_page.dart';
import 'package:finance_app/presentation/tab_bar/ui/page/tab_bar_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String addTransaction = "/addTransaction";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.addTransaction:
        return MaterialPageRoute(builder: (_) => AddTransactionPage());
      // case Routes.loginRoute:
      //   initLoginModule();
      //   return MaterialPageRoute(builder: (_) => LoginView());
      // case Routes.onBoardingRoute:
      //   return MaterialPageRoute(builder: (_) => OnBoardingView());
      // case Routes.registerRoute:
      //   initRegisterModule();
      //   return MaterialPageRoute(builder: (_) => RegisterView());
      // case Routes.forgotPasswordRoute:
      //   initForgotPasswordModule();
      //   return MaterialPageRoute(builder: (_) => ForgotPasswordView());
      case Routes.mainRoute:
        // initHomeModule();
        return MaterialPageRoute(builder: (_) => const TabBarPage());
      // case Routes.storeDetailsRoute:
      //   initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => StoreDetailsView());
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
