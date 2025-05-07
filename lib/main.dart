import 'package:finance_app/app/app_router.dart';
import 'package:finance_app/app/di.dart';
import 'package:finance_app/data/data_source/local/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/utils/screem_size.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper.instance.database;

  di.initLocators();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue, statusBarBrightness: Brightness.light));

  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return ScreenUtilInit(
        designSize: const Size(DEVICE_WIDTH, DEVICE_HEIGHT),
        builder: (_, __) {
          return MaterialApp.router(
            // onGenerateRoute: RouteGenerator.getRoute,

            // initialRoute: Routes.mainRoute,
            routerConfig: appRouter.config(),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
          );
        });
  }
}
