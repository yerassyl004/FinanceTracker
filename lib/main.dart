import 'package:finance_app/presentation/resourses/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/utils/screem_size.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.blue,
    statusBarBrightness: Brightness.dark
  ));
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(DEVICE_WIDTH, DEVICE_HEIGHT),
      builder: (_, __) {
      return MaterialApp(
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.mainRoute,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      );
    });
  }
}
